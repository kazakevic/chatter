<?php
/**
 * Created by PhpStorm.
 * User: Darjush
 * Date: 4/20/2016
 * Time: 11:15 PM
 */


return  [
//How much keywords should match to give answer from database
    //how much keys should match to gvie answer
    'minKeysToMatch' => 2,
    'minValue' => 90,
    //1 - 100% keys/sentence keys
    'minMatchValue' => 0.6,
    //enables delay before send asnwer
    'simulateConversation' => false,
    //delay in seconds
    'simulateDelayMin' => 5,
    'simulateDelayMax' => 10,
    'addSmiley' => true,
    'enableLithuanianWiki' => true


];