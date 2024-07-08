<?php

namespace App\Http\Controllers;

use App\Models\Pemeriksaan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Dokter as DokterModel;
use App\Models\Pasien as PasienModel;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;

class PemeriksaanController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $datapemeriksaan = Pemeriksaan::join('pasien','pasien.id','=','pemeriksaan.idPasien')
                            ->join('dokter','dokter.id','=','pemeriksaan.idDokter')
                            ->select(['pemeriksaan.*','pasien.nama as namaPasien','dokter.nama as namaDokter','dokter.spesialisasi'])
                            ->paginate(10);
        return view('admin.pemeriksaan.index', compact('datapemeriksaan'));

    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
        $datapasien = PasienModel::all();
        $datadokter = DokterModel::all();
        
        
        return view('admin.pemeriksaan.create', compact('datapasien','datadokter'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
        // dd($request);
        $rules = [
            'pasien' => 'required',
            'dokter' => 'required',
            'tanggalPeriksa' => 'required|date',
            'keluhan' => 'required|string|min:3|max:255',
            'fileLampiran' => 'required|mimes:jpg,png,jpeg,gif|max:2048',
           
		];
        $id=
        [
            'required' => ':attribute wajib diisi.',
            'size' => ':attribute harus berukuran :size karakter.',
            'max' => ':attribute maksimal berisi :max karakter.',
            'min' => ':attribute minimal berisi :min karakter.',
            'email' => ':attribute harus diisi dengan alamat email yang valid.',
            'numeric' => ':attribute harus diisi dengan angka.',
            'unique' => ':attribute sudah digunakan.',
            'fileLampiran.mimes' => 'File harus berupa gambar dengan format: jpg, png, jpeg, gif.'
            // 'mimes' => ':attribute harus berupa gambar',
        ]; 

        $validator = Validator::make($request->all(),$rules,$id);
        // dd($validator);
        if ($validator->fails()) {
			return redirect()->back()
			->withInput()
			->withErrors($validator)
            ->with('danger', 'Pastikan semua field diisi');
		}else{
            // dd($request);
            //upload image
            $no = 'REG-' . date('Ymd') . '-' . Str::upper(Str::random(6));
            $fileLampiran = $request->file('fileLampiran');
            $namaFileLampiran = time().".".$fileLampiran->getClientOriginalExtension();
            $pathFileLampiran = Storage::disk('public')->putFileAs('fileLampiran', $fileLampiran,$namaFileLampiran);

            $user=Pemeriksaan::create([
                'no_transaksi_pemeriksaan' => $no,
                'idPasien' => $request->pasien,
                'idDokter' => $request->dokter,
                'tanggalPeriksa' => $request->tanggalPeriksa,
                'fileLampiran' => $namaFileLampiran,
                'keluhan' => $request->keluhan,
            ]);
            return redirect()->route('pemeriksaan.index')->with('success','Input Data Pemeriksaan berhasil.');
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Pemeriksaan $pemeriksaan)
    {
        //
       
       
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Pemeriksaan $pemeriksaan)
    {
        //
        $datapasien = PasienModel::all();
        $datadokter = DokterModel::all();
        
        
        return view('admin.pemeriksaan.edit', compact('pemeriksaan','datapasien','datadokter'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Pemeriksaan $pemeriksaan)
    {
        //
        // dd($request);
        $rules = [
            'pasien' => 'required',
            'dokter' => 'required',
            'tanggalPeriksa' => 'required|date',
            'keluhan' => 'required|string|min:3|max:255',
            'fileLampiran' => 'required|mimes:jpg,png,jpeg,gif|max:2048',
           
		];
        $id=
        [
            'required' => ':attribute wajib diisi.',
            'size' => ':attribute harus berukuran :size karakter.',
            'max' => ':attribute maksimal berisi :max karakter.',
            'min' => ':attribute minimal berisi :min karakter.',
            'email' => ':attribute harus diisi dengan alamat email yang valid.',
            'numeric' => ':attribute harus diisi dengan angka.',
            'unique' => ':attribute sudah digunakan.',
            'fileLampiran.mimes' => 'File harus berupa gambar dengan format: jpg, png, jpeg, gif.'
            // 'mimes' => ':attribute harus berupa gambar',
        ]; 

        $validator = Validator::make($request->all(),$rules,$id);
        // dd($validator);
        if ($validator->fails()) {
			return redirect()->back()
			->withInput()
			->withErrors($validator)
            ->with('danger', 'Pastikan semua field diisi');
		}else{
            // dd($request);
            //upload image
            
            $fileLampiran = $request->file('fileLampiran');
            $namaFileLampiran = time().".".$fileLampiran->getClientOriginalExtension();
            $pathFileLampiran = Storage::disk('public')->putFileAs('fileLampiran', $fileLampiran,$namaFileLampiran);

            $pemeriksaan->idPasien = $request->pasien;
            $pemeriksaan->idDokter = $request->dokter;
            $pemeriksaan->tanggalPeriksa = $request->tanggalPeriksa;
            $pemeriksaan->keluhan = $request->keluhan;
            $pemeriksaan->fileLampiran = $namaFileLampiran;
            $pemeriksaan->save();

            return redirect()->route('pemeriksaan.index')->with('success','Update Data Pemeriksaan berhasil.');
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Pemeriksaan $pemeriksaan)
    {
        //

        $pemeriksaan->delete();
        return redirect()
            ->route('pemeriksaan.index')
            ->with('success', 'Pemeriksaan berhasil dihapus');
    }

    public function download($file){
        
        $filePath = 'public/fileLampiran/' . $file;
        if (Storage::exists($filePath)) {
            return Storage::download($filePath);
        } else {
            return redirect()->back()->with('error', 'File tidak ditemukan');
        }
    }
}
