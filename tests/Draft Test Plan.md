# Test Plan Document <!-- omit in toc -->

- [IDENTIFICATION INFORMATION SECTION](#identification-information-section)
  - [PRODUCT](#product)
  - [PROJECT DESCRIPTION](#project-description)
  - [TEST PERSONNEL](#test-personnel)
  - [PROGRAMMERS](#programmers)
- [UNIT TEST SECTION](#unit-test-section)
  - [UNIT TEST STRATEGY / EXTENT OF UNIT TESTING:](#unit-test-strategy--extent-of-unit-testing)
  - [UNIT TEST CASES](#unit-test-cases)

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

Evaluate features and bug fixes that exist in this initial version of the Live Better application

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
4. Check that the 'Symptoms' tab view is the default view that is seen when user logs into application <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that the symptom log tab view is the default view that is seen when user logs into application<br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The 'Symptoms' tab view will be the default view that is seen when user logs into application <br/>
<br/>
5. Check symptom log UI when no symptoms have been entered <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check UI when there are no symptoms entered <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: "No symptoms entered. Tap + to begin" <br/>
<br/>
6. Check that an empty symptom log sheet appears when '+' is tapped in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that an empty symptom log sheet appears when '+' is tapped in symptom tab view <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: An empty symptom log sheet appears when '+' is tapped in the 'Symptoms' tab view <br/>
<br/>
7. Check that a logged symptom appears at top of 'Symptoms' tab view under the appropriate time frame filter immediately when user taps "save" <br/>
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
&nbsp;&nbsp;&nbsp; - Expected Results: Newly entered symptom will appear at top of the 'Symptoms' tab view <br/>
<br/>
8. Check that a logged symptom persists <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a logged symptom appears in the 'Symptoms' tab view indefinitely unless user deletes symptom <br/>
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
9. Check that the logged symptoms are shown with the appropriate color based on symptom severity <br/>
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
10. Check that the logged symptoms are shown with the appropriate color based on symptom severity <br/>
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
11. Check that the logged symptoms are shown with the appropriate color based on symptom severity <br/>
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
12. Check that the logged symptoms are shown with the appropriate color based on symptom severity <br/>
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
13. Check that the logged symptoms are shown with the appropriate color based on symptom severity <br/>
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
<br/>
14. Check that the logged symptoms are shown in the appropriate time-frame based filtered view in the symptom log view tab <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a symptom logged today shows in the views 'Today', 'Month', '3 Months', '6 Months', '9 Months', 'Year', 'All Time' within the 'Symptoms' tab view  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap '+' in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Enter symptom information  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Check that the logged symptom is shown in the appropriate filtered views <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged symptom will show in views 'Today', 'Month', '3 Months', '6 Months', '9 Months', 'Year', 'All Time' within the 'Symptoms' tab view <br/>
<br/>
15. Check that the logged symptoms are shown in the appropriate time-frame based filtered view in the symptom log view tab <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a symptom logged yesterday shows in the views 'Month', '3 Months', '6 Months', '9 Months', 'Year', 'All Time' within the 'Symptoms' tab view  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap '+' in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Enter symptom information  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Check that the logged symptom is shown in the appropriate filtered views <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged symptom will show in views 'Month', '3 Months', '6 Months', '9 Months', 'Year', 'All Time' within the 'Symptoms' tab view <br/>
<br/>
16. Check that the logged symptoms are shown in the appropriate time-frame based filtered view in the symptom log view tab <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a symptom logged 32 days ago shows in the views '3 Months', '6 Months', '9 Months', 'Year', 'All Time' within the 'Symptoms' tab view  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap '+' in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Enter symptom information  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Check that the logged symptom is shown in the appropriate filtered views <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged symptom will show in views '3 Months', '6 Months', '9 Months', 'Year', 'All Time' within the 'Symptoms' tab view <br/>
<br/>
17. Check that the logged symptoms are shown in the appropriate time-frame based filtered view in the symptom log view tab <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a symptom logged four months ago shows in the views '6 Months', '9 Months', 'Year', 'All Time' within the 'Symptoms' tab view  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap '+' in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Enter symptom information  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Check that the logged symptom is shown in the appropriate filtered views <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged symptom will show in views '6 Months', '9 Months', 'Year', 'All Time' within the 'Symptoms' tab view <br/>
<br/>
18. Check that the logged symptoms are shown in the appropriate time-frame based filtered view in the symptom log view tab <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a symptom logged eight months ago shows in the views '9 Months', 'Year', 'All Time' within the 'Symptoms' tab view  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap '+' in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Enter symptom information  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Check that the logged symptom is shown in the appropriate filtered views <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged symptom will show in views '9 Months', 'Year', 'All Time' within the 'Symptoms' tab view <br/>
<br/>
19. Check that the logged symptoms are shown in the appropriate time-frame based filtered view in the symptom log view tab <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a symptom logged 12 months ago shows in the views 'Year', 'All Time' within the 'Symptoms' tab view  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap '+' in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Enter symptom information  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Check that the logged symptom is shown in the appropriate filtered views <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged symptom will show in views 'Year', 'All Time' within the 'Symptoms' tab view <br/>
<br/>
20. Check that the logged symptoms are shown in the appropriate time-frame based filtered view in the symptom log view tab <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a symptom logged 13 months ago shows only in the view 'All Time' within the 'Symptoms' tab view  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap '+' in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Enter symptom information  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Check that the logged symptom is shown in the appropriate filtered views <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged symptom will show only in the view 'All Time' within the 'Symptoms' tab view <br/>
<br/>
21. Check that the user can delete a symptom entry and the entry will be deleted from all filtered time-frame based views <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that the user can delete a symptom entry and the entry will be deleted from all filtered time-frame based views in the 'Symptoms' tab  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed with user logged in and symptom created which exists in multiple time-frame based views <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap '+' in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Enter symptom information  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Check that the logged symptom is shown in the appropriate filtered views <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9. Select a symptom entry and swipe left to delete the symptom entry <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10. Check that the logged symptom that the user wishes to delete is deleted from all filtered time-frame based views <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged symptom that the user wishes to delete will be deleted from all filtered time-frame based views within the 'Symptoms' tab view <br/>
<br/>
22. Check that the user can update a symptom entry and the entry will be updated in all filtered time-frame based views <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that the user can update a symptom entry and the entry will be updated in all filtered time-frame based views in the 'Symptoms' tab  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed with user logged in and symptom created which exists in multiple time-frame based views <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap '+' in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Enter symptom information  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Check that the logged symptom is shown in the appropriate filtered views <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9. Select a symptom entry and tap on the symptom entry to update symptom <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10. Update symptom entry and tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11. Check that the logged symptom that the user wishes to update is updated in all filtered time-frame based views <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged symptom that the user wishes to update will be updated in all filtered time-frame based views within the 'Symptoms' tab view <br/>
<br/>
23. Check user symptom entry input  <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that the user can log two different symptom entries within the same day that contain all the same symptom data and ensure the program recognizes the entries as two separate entries  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed with user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap '+' in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Enter symptom information  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Repeat steps 5 - 7 with the exact same symptom data <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9. Check that the logged symptoms with the exact same symptom data appears as two separate symptom entries <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged symptoms with the same data and logged within the same day will appear in the 'Symptoms' tab view as two separate symptom entries <br/>
<br/>
24. Check user symptom entry input  <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that the program will show a message reminding the user to enter a symptom name if user tries to save an empty symptom log sheet  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed with user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap '+' in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Do not enter any symptom data  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9. Check that the program will show a message reminding the user to log a symptom name prior to saving the symptom <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The program will show a message reminding the user to input a symptom name prior to saving the symptom if the user attempts to save an empty symptom log sheet <br/>
<br/>
25. Check health measurements UI when no measurements have been entered <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check UI when there are no measurements entered <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Health Measurements' tab <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: "No health measurements entered. Tap + to start begin" <br/>
<br/>
26. Check that an empty health measurements log sheet appears when '+' is tapped on 'Health Measurements' tab view <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that an empty health measurements log sheet appears when '+' is tapped on 'Health Measurements' tab view  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Health Measurements' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Tap '+'  <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: An empty health measurements log sheet appears when '+' is tapped on the 'Health Measurements' tab view <br/>
<br/>
27. Check that a logged health measurement appears at top of 'Health Measurements' tab view under the appropriate time-frame filter immediately when user taps "save" <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a logged health measurement appears in the 'Health Measurements' tab view immediately when user taps "save" <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Health Measurements' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Tap '+' in 'Health Measurements' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Enter health measurement data <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: Newly entered health measurement will appear at top of the 'Health Measurements' tab view <br/>
<br/>
28. Check that a logged health measurement persists <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a logged health measurement appears in the 'Health Measurements' tab view indefinitely unless user deletes measurement <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Health Measurements' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Tap '+' in 'Health Measurements' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Enter health measurement data <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9. Monitor 'Health Measurements' tab view in the days, weeks, and months to ensure health measurement entry persists <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: Health Measurement will persist indefinitely unless user deletes the entry <br/>
<br/>
29. Check that the logged health measurements are shown in the appropriate time-frame based filtered view in the 'Health Measurements' view tab <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a health measurement logged today shows in the views 'Today', 'Month', '3 Months', '6 Months', '9 Months', 'Year', 'All Time' within the 'Symptoms' tab view  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Health Measurements' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap '+' in 'Health Measurements' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Enter health measurement data  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Check that the logged health measurement is shown in the appropriate filtered views <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged health measurement will show in views 'Today', 'Month', '3 Months', '6 Months', '9 Months', 'Year', 'All Time' within the 'Health Measurements' tab view <br/>
<br/>
30. Check that the logged health measurements are shown in the appropriate time-frame based filtered view in the 'Health Measurements' view tab <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a health measurement logged yesterday shows in the views 'Month', '3 Months', '6 Months', '9 Months', 'Year', 'All Time' within the 'Symptoms' tab view  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Health Measurements' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap '+' in 'Health Measurements' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Enter health measurement data  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Check that the logged health measurement is shown in the appropriate filtered views <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged health measurement will show in views 'Month', '3 Months', '6 Months', '9 Months', 'Year', 'All Time' within the 'Symptoms' tab view <br/>
<br/>
31. Check that the logged health measurements are shown in the appropriate time-frame based filtered view in the 'Health Measurements' view tab <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a health measurement logged 32 days ago shows in the views '3 Months', '6 Months', '9 Months', 'Year', 'All Time' within the 'Health Measurements' tab view  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Health Measurements' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap '+' in 'Health Measurements' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Enter health measurement data  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Check that the logged health measurement is shown in the appropriate filtered views <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged health measurement will show in views '3 Months', '6 Months', '9 Months', 'Year', 'All Time' within the 'Health Measurements' tab view <br/>
<br/>
32. Check that the logged health measurements are shown in the appropriate time-frame based filtered view in the 'Health Measurements' view tab <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a symptom logged four months ago shows in the views '6 Months', '9 Months', 'Year', 'All Time' within the 'Health Measurements' tab view  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Health Measurements' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap '+' in 'Health Measurements' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Enter health measurement data  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Check that the logged health measurement is shown in the appropriate filtered views <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The health Measurement will show in views '6 Months', '9 Months', 'Year', 'All Time' within the 'Health Measurements' tab view <br/>
<br/>
33. Check that the logged health measurements are shown in the appropriate time-frame based filtered view in the 'Health Measurements' view tab <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a health measurement logged eight months ago shows in the views '9 Months', 'Year', 'All Time' within the 'Health Measurements' tab view  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Health Measurements' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap '+' in 'Health Measurements' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Enter health measurement data  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Check that the logged health measurement is shown in the appropriate filtered views <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged health measurement will show in views '9 Months', 'Year', 'All Time' within the 'Health Measurements' tab view <br/>
<br/>
34. Check that the logged health measurements are shown in the appropriate time-frame based filtered view in the 'Health Measurements' view tab <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a health measurement logged 12 months ago shows in the views 'Year', 'All Time' within the 'Health Measurements' tab view  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Health Measurements' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap '+' in 'Health Measurements' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Enter health measurement data  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Check that the logged health measurement is shown in the appropriate filtered views <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged health measurement will show in views 'Year', 'All Time' within the 'Health Measurements' tab view <br/>
<br/>
35. Check that the logged health measurements are shown in the appropriate time-frame based filtered view in the 'Health Measurements' view tab <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a symptom logged 13 months ago shows only in the view 'All Time' within the 'Health Measurements' tab view  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Health Measurements' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap '+' in 'Health Measurements' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Enter health measurement data  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Check that the logged health measurement is shown in the appropriate filtered views <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged health measurement will show only in the view 'All Time' within the 'Health Measurements' tab view <br/>
<br/>
36. Check that the user can delete a health measurement entry and the entry will be deleted from all filtered time-frame based views <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that the user can delete a health measurement entry and the entry will be deleted from all filtered time-frame based views in the 'Health Measurements' tab  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed with user logged in and symptom created which exists in multiple time-frame based views <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Health Measurements' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Tap '+' in 'Health Measurements' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Enter health measurement data  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Check that the logged health measurement is shown in the appropriate filtered views <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9. Select a health measurement entry and swipe left to delete the entry <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10. Check that the logged health measurement that the user wishes to delete is deleted from all filtered time-frame based views <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged health measurement that the user wishes to delete will be deleted from all filtered time-frame based views within the 'Health Measurements' tab view <br/>
<br/>
37. Check that the user can update a health measurement entry and the entry will be updated in all filtered time-frame based views <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that the user can update a symptom entry and the entry will be updated in all filtered time-frame based views in the 'Health Measurements' tab  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed with user logged in and symptom created which exists in multiple time-frame based views <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Health Measurements' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Tap '+' in 'Health Measurements' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Enter health measurement data  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9. Check that the logged health measurement is shown in the appropriate filtered views <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10. Select a health measurement entry and tap to update the entry <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11. Update entry and tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12. Check that the logged health measurement that the user wishes to update is updated in all filtered time-frame based views <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged health measurement that the user wishes to update will be updated in all filtered time-frame based views within the 'Health Measurements' tab view <br/>
<br/>
38. Check user health measurement entry input  <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that the user can log two different health measurement entries within the same day that contain all the same data and ensure the program recognizes the entries as two separate entries  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed with user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Health Measurements' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Tap '+' in 'Health Measurements' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Enter health measurement data  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9. Repeat steps 5 - 7 with the exact same health measurement data <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10. Check that the logged health measurements with the exact same data appears as two separate entries <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged health measurements with the same data and logged within the same day will appear in the 'Health Measurements' tab view as two separate entries <br/>
<br/>
39. Check user health measurement entry input  <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that the program will show a message reminding the user to enter data if user tries to save an empty health measurement log sheet  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed with user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Health Measurements' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Tap '+' in 'Health Measurements' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Do not enter any data  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9. Check that the program will show a message reminding the user to log data prior to saving the health measurement <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The program will show a message reminding the user to input health measurement data prior to saving the entry if the user attempts to save an empty health measurement log sheet <br/>
<br/>
40. Check medication log UI when no medications have been entered <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check UI when there are no medications entered <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Medications' tab <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: "No medications/supplements entered. Tap + to get started" <br/>
<br/>
41. Check medication log UI when no medications have been entered into medication list<br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check UI when there are no medications entered into medication list<br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Medications' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Tap '+' <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: Medication log sheet will appear when the user taps '+' <br/>
<br/>
42. Check that an empty medication log sheet appears when '+' is tapped in 'Medications' tab view <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that an empty medication log sheet appears when '+' is tapped in 'Medications' tab view  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Medications' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Tap '+'  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap '+' again to show medication log sheet <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: An empty medication log sheet appears when '+' is tapped in the 'Medications' tab view <br/>
<br/>
43. Check that a logged medication appears at the top of 'Medications' tab view under the appropriate time-frame filter immediately when user taps "save" <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a logged health measurement appears in the 'Health Measurements' tab view immediately when user taps "save" <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Medications' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Tap '+' in 'Medications' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap on medication/supplement or '+' to enter a new medication/supplement <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Enter medication/supplement information <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: Newly entered medication entries will appear at the top of the 'Health Measurements' tab view <br/>
<br/>
44. Check that a logged medication/supplement persists <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a logged health measurement appears in the 'Health Measurements' tab view indefinitely unless user deletes measurement <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Medications' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Tap '+' in 'Medications' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap on medication/supplement or '+' to enter a new medication/supplement <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9. Monitor 'Medications' tab view in the days, weeks, and months to ensure health measurement entry persists <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: Medication/supplement data will persist indefinitely unless user deletes the entry <br/>
<br/>
45. Check that the logged medication/supplement are shown in the appropriate time-frame based filtered view in the 'Medications' tab view <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a medication logged today shows in the views 'Today', 'Week', 'Month', 'All Time' within the 'Medications' tab view  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Medications' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Tap '+' in 'Medications' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap on medication/supplement or '+' to enter a new medication/supplement <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9. Check that the logged medication is shown in the appropriate filtered views <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: Check that a medication logged today shows in the views 'Today', 'Week', 'Month', 'All Time' within the 'Medications' tab view  <br/>
<br/>
46. Check that the logged medication/supplement are shown in the appropriate time-frame based filtered view in the 'Medications' tab view  <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a health measurement logged yesterday shows in the views 'Week', 'All Time' within the 'Medications' tab view  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Medications' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Tap '+' in 'Medications' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap on medication/supplement or '+' to enter a new medication/supplement <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9. Check that the logged medication is shown in the appropriate filtered views <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged health measurement will show in views 'Week', 'All Time' within the 'Medications' tab view <br/>
<br/>
47. Check that the logged medications are shown in the appropriate time-frame based filtered view in the 'Medications' tab view <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a health measurement logged 32 days ago shows only in the view 'All Time' within the 'Health Measurements' tab view  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Medications' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Tap '+' in 'Medications' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap on medication/supplement or '+' to enter a new medication/supplement <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9. Check that the logged medication is shown in the appropriate filtered views <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The health measurement logged 32 days ago shows only in the view 'All Time' within the 'Health Measurements' tab view <br/>
<br/>
48. Check that the user can delete a medication entry and the entry will be deleted from all filtered time-frame based views <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that the user can delete a medication entry and the entry will be deleted from all filtered time-frame based views in the 'Medications' tab  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed with user logged in and symptom created which exists in multiple time-frame based views <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Medications' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Tap '+' in 'Medications' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap on medication/supplement or '+' to enter a new medication/supplement  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Check that the logged health measurement is shown in the appropriate filtered views <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9. Select a medication entry and swipe left to delete the entry <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10. Check that the logged medication that the user wishes to delete is deleted from all filtered time-frame based views <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged medication that the user wishes to delete will be deleted from all filtered time-frame based views within the 'Medications' tab view <br/>
<br/>
49. Check that the user can update a medication entry and the entry will be updated in all filtered time-frame based views <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that the user can update a medication entry and the entry will be updated in all filtered time-frame based views in the 'Medications' tab  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed with user logged in and symptom created which exists in multiple time-frame based views <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Medications' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Tap a medication entry in 'Medications' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Edit data in medication entry  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9. Check that the logged medication that the user wishes to update is updated in all filtered time-frame based views <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged medication that the user wishes to update will be updated in all filtered time-frame based views within the 'Medications' tab view <br/>
<br/>
50. Check user health measurement entry input  <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that the program will show a message reminding the user to enter data if user tries to save an empty medication log sheet  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed with user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Enter valid username <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter valid password <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap login <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Medications' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Tap '+'  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap '+' again to show medication log sheet <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Do not enter any data  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10. Check that the program will show a message reminding the user to log data prior to saving the medication <br/>
&nbsp;&nbsp;&nbsp; - Test Data: (will be recorded during testing) <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The program will show a message reminding the user to input medication data prior to saving the entry if the user attempts to save an empty medication log sheet <br/>
<br/>




