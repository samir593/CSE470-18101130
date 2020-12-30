<?php

namespace testcases\unitTesting;

use testcases\unitTesting;
use RefreshDatabase;

class adminInfoTest extends TestCase
{
    /**
     * A basic unit test example.
     *
     * @return void
     */
    public function testExample()
    {
        $this->assertDatabaseHas('admin', [
            'name'=>"samir"

        ]);

        $this->assertDatabaseHas('admin', [
            'pass'=>"1234"

        ]);
    }
}