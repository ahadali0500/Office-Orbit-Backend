<?php

    function generateUniqueIdentifier()
    {
        $microtime = microtime(true); // Get current time in seconds and microseconds
        $randomNumber = mt_rand();    // Generate a random number
        $uniqueId = $microtime . $randomNumber; // Concatenate the two to form a unique identifier
        return md5($uniqueId); // Hash the result to create a fixed-length unique string
    }