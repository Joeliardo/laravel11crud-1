<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\Dokter as DokterModel;

class DokterSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $faker = Faker::create('id_ID');
 
    	for($i = 1; $i <= 10; $i++){
 
    	      // insert data ke table pasien menggunakan Faker
    		

              DokterModel::create([
                'nama' => $faker->name,
    			'spesialisasi' => $faker->randomElement($array = array ('Penyakit Dalam','Saraf','Kandungan & Ginekologi','Bedah','Mata','Gigi','Kulit & Kelamin')),
            ]);
 
    	}
    }
}
