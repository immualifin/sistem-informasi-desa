<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // Import raw SQL dump directly since the dump contains both table structures and data
        $sqlPath = database_path('desa-laravel.sql');
        if (file_exists($sqlPath)) {
            // Drop all existing tables to prevent collision with migrations
            \Illuminate\Support\Facades\Artisan::call('db:wipe');
            
            // Disable foreign key checks for safe import if there's any
            DB::statement('SET FOREIGN_KEY_CHECKS=0;');
            DB::unprepared(file_get_contents($sqlPath));
            DB::statement('SET FOREIGN_KEY_CHECKS=1;');
            $this->command->info('Database wiped and newly imported from desa-laravel.sql successfully!');
        } else {
            $this->command->warn('desa-laravel.sql not found! Skipping SQL import.');
        }
    }
}
