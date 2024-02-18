# Test Plan Document <!-- omit in toc -->

- [IDENTIFICATION INFORMATION SECTION](#identification-information-section)
  - [PRODUCT](#product)
  - [PROJECT DESCRIPTION](#project-description)
  - [TEST PERSONNEL](#test-personnel)
  - [PROGRAMMERS](#programmers)
- [UNIT TEST SECTION](#unit-test-section)
  - [UNIT TEST STRATEGY / EXTENT OF UNIT TESTING:](#unit-test-strategy--extent-of-unit-testing)
  - [UNIT TEST CASES](#unit-test-cases)
- [REGRESSION TEST SECTION](#regression-test-section)
  - [REGRESSION TEST STRATEGY](#regression-test-strategy)
  - [REGRESSION TEST CASES](#regression-test-cases)
- [INTEGRATION TEST SECTION](#integration-test-section)
  - [INTEGRATION TEST STRATEGY AND EXTENT OF INTEGRATION TESTING](#integration-test-strategy-and-extent-of-integration-testing)
  - [INTEGRATION TEST CASES](#integration-test-cases)
- [USER ACCEPTANCE TEST SECTION (To be completed by the business office)](#user-acceptance-test-section-to-be-completed-by-the-business-office)
  - [USER ACCEPTANCE TEST STRATEGY](#user-acceptance-test-strategy)
  - [USER ACCEPTANCE TEST CASES](#user-acceptance-test-cases)
- [Appendix](#appendix)

## IDENTIFICATION INFORMATION SECTION

### PRODUCT

- **Live Better:** 

### PROJECT DESCRIPTION

Live Better a personal medical manager application. This is an IOS application which provides a secure, user-friendly, 
and fully customizeable medical manager to anyone looking to improve their health and/or manage a chronic physical or mental health condition. 
This app gives users the ability to track symptoms, health measurements, and medications/supplements. Taking proper care of ourselves is hard, 
but Live Better should make things easier.

### TEST PERSONNEL

- Will include various friends, classmates, and family members.
- Technology used for testing is TestFlight (https://developer.apple.com/testflight/)

### PROGRAMMERS

- Jessica Taylor

## UNIT TEST SECTION

### UNIT TEST STRATEGY / EXTENT OF UNIT TESTING:

Evaluate new features and bug fixes introduced in this release

### UNIT TEST CASES

1. Check login functionality (valid login) <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check response on entering valid user name and password <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter user name <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: Login successful <br/>
<br/>
2. Check login functionality (invalid login) <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check response on entering invalid user name and password <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter user name <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: Login unsuccessful <br/>
<br/>
3. Check login functionality (no login entered) <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check response on not entering user name and password <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Tap login <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: Login unsuccessful. Please enter a valid user name and password <br/>
<br/>
4. Check that the symptom log tab view is the default view that is seen when user logs into application <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that the symptom log tab view is the default view that is seen when user logs into application<br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The symptom log tab view will be the default view that is seen when user logs into application <br/>
5. Check symptom log UI when no symptoms have been entered <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check UI when there are no symptoms entered <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: "No symptoms entered. Tap + to start loggin symptoms" <br/>
<br/>
6. Check that an empty symptom log sheet appears when '+' is tapped on symptom tab view <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that an empty symptom log sheet appears when '+' is tapped on symptom tab view <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: An empty symptom log sheet appears when '+' is tapped on the symptom tab view <br/>
<br/>
7. Check that a logged symptom appears at top of symptom log tab view under the appropriate time frame filter immediately when user taps "save" <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a logged symptom appears in the symptom log tab view immediately when user taps "save" <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap '+' in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Enter symptom information <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: Newly entered symptom will appear at top of the symptom log tab view <br/>
<br/>
7. Check that a logged symptom persists <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a logged symptom appears in the symptom log tab view indefinitely unless user deletes symptom <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap '+' in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Enter symptom information <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Monitor symptom log tab view in the days, weeks, and months to ensure symptom entry persists <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: Symptoms will persist indefinitely unless user deletes the symptom <br/>
<br/>
8. Check that the logged symptoms are shown with the appropriate color based on symptom severity <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a logged symptom with severity: 'mild' appears as green in symptom log tab view <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap '+' in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Enter symptom information with 'mild' severity <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Check that the cell associated with the symptom entry shows as green <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The cell associated with the symptom entry should appear as green in the 'Symptoms' tab view <br/>
<br/>
9. Check that the logged symptoms are shown with the appropriate color based on symptom severit <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a logged symptom with severity: 'moderate' appears as yellow in symptom log tab view <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap '+' in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Enter symptom information with 'moderate' severity <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Check that the cell associated with the symptom entry shows as yellow <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The cell associated with the symptom entry should appear as yellow in the 'Symptoms' tab view <br/>
<br/>
10. Check that the logged symptoms are shown with the appropriate color based on symptom severit <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a logged symptom with severity: 'severe' appears as orange in symptom log tab view <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap '+' in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Enter symptom information with 'severe' severity <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Check that the cell associated with the symptom entry shows as orange <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The cell associated with the symptom entry should appear as orange in the 'Symptoms' tab view <br/>
<br/>
11. Check that the logged symptoms are shown with the appropriate color based on symptom severit <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a logged symptom with severity: 'unbearable' appears as red in symptom log tab view <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap '+' in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Enter symptom information with 'unbearable' severity <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Check that the cell associated with the symptom entry shows as red <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The cell associated with the symptom entry should appear as red in the 'Symptoms' tab view <br/>
<br/>
12. Check that the logged symptoms are shown with the appropriate color based on symptom severit <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a logged symptom with severity: 'none' appears as black in symptom log tab view <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap '+' in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Enter symptom information with 'none' severity <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Check that the cell associated with the symptom entry shows as black <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The cell associated with the symptom entry should appear as black in the 'Symptoms' tab view <br/>

## REGRESSION TEST SECTION

Ensure that previously developed and tested software still performs after change.

### REGRESSION TEST STRATEGY

Evaluate all reports introduced in previous releases

### REGRESSION TEST CASES

| #   | OBJECTIVE | INPUT | EXPECTED RESULTS | OBSERVED |
| --- | --------- | ----- | ---------------- | -------- |
| 1   |           |       |                  |          |

## INTEGRATION TEST SECTION

Combine individual software modules and test as a group.

### INTEGRATION TEST STRATEGY AND EXTENT OF INTEGRATION TESTING

Evaluate all integrations with locally developed shared libraries, with consumed services, and other touch points.

### INTEGRATION TEST CASES

| #   | OBJECTIVE | INPUT | EXPECTED RESULTS | TEST DELIVERABLES |
| --- | --------- | ----- | ---------------- | ----------------- |
| 1   |           |       |                  |                   |

## USER ACCEPTANCE TEST SECTION (To be completed by the business office)

Verify that the solution works for the user

### USER ACCEPTANCE TEST STRATEGY

{Explain how user acceptance testing will be accomplished}

### USER ACCEPTANCE TEST CASES

| #   | TEST ITEM | EXPECTED RESULTS | ACTUAL RESULTS | DATE |
| --- | --------- | ---------------- | -------------- | ---- |
| 1   |           |                  |                |      |

## Appendix
