*** Settings ***
Library    squash_tf.TFParamService

*** Keywords ***
Voici une CUF
    ${code} =    Get Test Param    TC_CUF_textesimple
    Log To Console    ${code}
    