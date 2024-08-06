<?php

namespace App\Http\Controllers;

use App\Models\Pemeriksaan;
use App\Models\Pasien;
use App\Models\Dokter;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class PemeriksaanController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $datapemeriksaan = Pemeriksaan::join('pasien', 'pasien.id', '=', 'pemeriksaan.idPasien')
        ->join('dokter', 'dokter.id', '=', 'pemeriksaan.idDokter')
        ->select(['pemeriksaan.*', 'pasien.nama as namaPasien', 'dokter.nama as namaDokter', 'dokter.spesialisasi'])
        ->paginate(10);

        return view('admin.pemeriksaan.index', compact('datapemeriksaan'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $dataPasien = Pasien::all();
        $dataDokter = Dokter::all();
        return view('admin.pemeriksaan.create', compact('dataPasien', 'dataDokter'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
       
        $rules=[
            "pasien" => "required",
            "dokter" => "required",
            "tanggalPeriksa" => "required|date",
            "keluhan" => "required|string|min:3|max:255",
            "fileLampiran"=> "required|mimes:jpg,png,jpeg,gif|max:2048",
        ];
        $messages=[
            'required'=>':attribute wajib diisi',
            'min'=>':attribute minimal berisi :min karakter',
            'max'=>':attribute maksimal berisi :max karakter',
            'fileLampiran.mimes'=>'File harus berupa gambar dengan format: jpg, png, jpeg, gif',
        ];

        $validator = Validator::make($request->all(), $rules, $messages);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput()->with('danger','Pastikan semua field diisi');
        }
        else {
            $noPemeriksaan = 'REG-'.date('Ymd').'-'.Str::upper(Str::random(6));

            $fileLampiran = $request->file('fileLampiran');
            $namaFileLampiran = time().".".$fileLampiran->getClientOriginalExtension();
            // cara memindahkan file/image ke server
            $pathFileLampiran = Storage::disk("public")->putFileAs("fileLampiran", $fileLampiran, $namaFileLampiran);

            $simpanPemeriksaan = Pemeriksaan::create([
                'no_transaksi_pemeriksaan' => $noPemeriksaan,
                'idDokter'=> $request->dokter,
                'idPasien'=> $request->pasien,
                'tanggalPeriksa'=> $request->tanggalPeriksa,
                'fileLampiran'=> $namaFileLampiran,
                'keluhan'=> $request->keluhan,
            ]);

            return redirect()->route('pemeriksaan.index')->with('success','Tambah Data Pemeriksaan Berhasil');
        };
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
        $dataPasien = Pasien::all();
        $dataDokter = Dokter::all();
        return view('admin.pemeriksaan.edit', compact('pemeriksaan','dataPasien', 'dataDokter'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Pemeriksaan $pemeriksaan)
    {
        $rules=[
            "pasien" => "required",
            "dokter" => "required",
            "tanggalPeriksa" => "required|date",
            "keluhan" => "required|string|min:3|max:255",
            "fileLampiran"=> "required|mimes:jpg,png,jpeg,gif|max:2048",
        ];
        $messages=[
            'required'=>':attribute wajib diisi',
            'min'=>':attribute minimal berisi :min karakter',
            'max'=>':attribute maksimal berisi :max karakter',
            'fileLampiran.mimes'=>'File harus berupa gambar dengan format: jpg, png, jpeg, gif',
        ];

        $validator = Validator::make($request->all(), $rules, $messages);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput()->with('danger','Pastikan semua field diisi');
        }
        else {
            $fileLampiran = $request->file('fileLampiran');
            $namaFileLampiran = time().".".$fileLampiran->getClientOriginalExtension();
            // cara memindahkan file/image ke server
            $pathFileLampiran = Storage::disk("public")->putFileAs("fileLampiran", $fileLampiran, $namaFileLampiran);

            $pemeriksaan->idPasien = $request->pasien;
            $pemeriksaan->idDokter = $request->dokter;
            $pemeriksaan->tanggalPeriksa = $request->tanggalPeriksa;
            $pemeriksaan->keluhan = $request->keluhan;
            $pemeriksaan->fileLampiran = $namaFileLampiran;
            $pemeriksaan->save();
            
            return redirect()->route('pemeriksaan.index')->with('success','Edit Data Pemeriksaan Berhasil');
        };
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Pemeriksaan $pemeriksaan)
    {
        $pemeriksaan->delete();
        return redirect()->route('pemeriksaan.index')->with('success','Delete Data Pemeriksaan Berhasil');
    }
}
