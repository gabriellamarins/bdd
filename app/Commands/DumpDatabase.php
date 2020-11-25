<?php

namespace App\Commands;

use Illuminate\Console\Scheduling\Schedule;
use LaravelZero\Framework\Commands\Command;

class DumpDatabase extends Command
{
    /**
     * The signature of the command.
     *
     * @var string
     */
    protected $signature = 'database:dump';

    /**
     * The description of the command.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        //
    }

    /**
     * Define the command's schedule.
     *
     * @param  \Illuminate\Console\Scheduling\Schedule $schedule
     * @return void
     */
    public function schedule(Schedule $schedule): void
    {
        \Spatie\DbDumper\Databases\MySql::create()
                                        ->setHost(config('database.connections.mysql.host'))
                                        ->setPort(config('database.connections.mysql.port'))
                                        ->setDbName(config('database.connections.mysql.database'))
                                        ->setUserName(config('database.connections.mysql.username'))
                                        ->setPassword(config('database.connections.mysql.password'))
                                        ->dumpToFile( __DIR__ . '/../../results/database/backup.'.time().'.sql');
    }
}
