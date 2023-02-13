*** Settings ***
Documentation    test_CUF
Metadata         ID                           109
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
test_CUF
    [Documentation]    test_CUF

    Given Voici une CUF


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_109_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_109_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =        Get Variable Value    ${TEST_SETUP}
    ${TEST_109_SETUP_VALUE} =    Get Variable Value    ${TEST_109_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_109_SETUP_VALUE is not None
        Run Keyword    ${TEST_109_SETUP}
    END

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_109_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_109_TEARDOWN}.

    ${TEST_109_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_109_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =        Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_109_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_109_TEARDOWN}
    END
    IF    $TEST_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_TEARDOWN}
    END
