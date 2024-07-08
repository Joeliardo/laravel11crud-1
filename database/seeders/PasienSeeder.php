<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

use Faker\Factory as Faker;
use App\Models\Pasien as PasienModel;

class PasienSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $faker = Faker::create('id_ID');
 
    	for($i = 1; $i <= 50; $i++){
 
    	      // insert data ke table pasien menggunakan Faker
    		

            PasienModel::create([
                'nama' => $faker->name,
    			'alamat' => $faker->address,
    			'tanggalLahir' => $faker->date,
            ]);
 
    	}
    }
}
