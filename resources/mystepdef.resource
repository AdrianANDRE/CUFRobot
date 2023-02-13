*** Settings ***
Library    squash_tf.TFParamService


*** Variables ***
${TEST_SETUP}    Setup
${TEST_TEARDOWN}    Teardown
*** Keywords ***
Setup
    Log To Console    voici un nouveau test
Teardown
    Log To Console    ceci marque la fin de ce test
Voici une CUF
    ${code} =    Get Test Param    TC_CUF_textesimple
    Log To Console    ${code}
