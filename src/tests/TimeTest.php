<?php

use Laravel\Lumen\Testing\DatabaseMigrations;
use Laravel\Lumen\Testing\DatabaseTransactions;

class TimeTest extends TestCase
{
    /**
     * Test the time api endpoint.
     *
     * @return void
     */
    public function testListingAPIEndpoint()
    {
        $this->get('/time');
        $this->assertEquals('{"time":' . strtotime('now') . '}', $this->response->getContent());
    }
}
