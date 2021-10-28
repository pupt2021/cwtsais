<?php
namespace App\Controllers;

//use App\Database\Seeds;

class Migrate extends \CodeIgniter\Controller
{
    public function index()
    {
        $migrate = \Config\Services::migrations();

        try
        {
          if($migrate->latest())
          {
            echo "Successfully migrated";
          }
        }
        catch (\Exception $e)
        {
          die("error in migrations");
        }
    }

    public function movedown($regressBatchLevel)
    {
        $migrate = \Config\Services::migrations();
        try
        {
          if($migrate->regress($regressBatchLevel))
          {
            echo "Successfully migrated down ".$version;
          }
        }
        catch (\Exception $e)
        {
          die("error in migrations");
        }
    }

    public function seeder()
    {
        // die("here");
        $seeder = \Config\Database::seeder();
        // $seeder->call('RolesSeeder');
        // $seeder->call('UsersSeeder');
        // $seeder->call('SubjectSeeder');
        // $seeder->call('EnrollmentSeeder');
        // $seeder->call('ModuleSeeder');
        // $seeder->call('PermissionSeeder');
        // $seeder->call('PenaltyPermissionSeeder');
        // $seeder->call('TableManagementSeeder');
        // $seeder->call('StudentPermissionSeeder');
        // $seeder->call('AttendancePermissionSeeder');
        // $seeder->call('MaintenancesPermissionSeeder');
    }
}
