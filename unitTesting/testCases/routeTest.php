<?php

namespace testCases\unitTesting;


use Tests\TestCase;

class routeTest extends TestCase
{
    /**
     * A basic unit test example.
     *
     * @return void
     */
    public function testExample()
    {
        $response = $this->get("http://localhost/Venom/MVC/Controller/");
            $response->assertStatus (404);

        $responses = $this->post("http://localhost/Venom/MVC/Controller/");
        $responses->assertStatus (404);
    }
}