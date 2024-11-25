# Test Plan Document <!-- omit in toc -->

- [IDENTIFICATION INFORMATION SECTION](#identification-information-section)
  - [PRODUCT](#product)
  - [PROJECT DESCRIPTION](#project-description)
  - [TEST PERSONNEL](#test-personnel)
  - [PROGRAMMERS](#programmers)
-   [MANUAL TEST SECTION](#manual-test-section)
  - [MANUAL TEST STRATEGY / EXTENT OF MANUAL TESTING:](#manual-test-strategy--extent-of-manual-testing)
  - [MANUAL TEST CASES](#manual-test-cases)

## IDENTIFICATION INFORMATION SECTION

### PRODUCT

- **Live Better:** 

### PROJECT DESCRIPTION

Live Better is a personal medical manager application. This is an IOS application which provides a secure, user-friendly, 
and fully customizeable medical manager to anyone looking to improve their health and/or manage a chronic physical or mental health condition. 
This app gives users the ability to track symptoms, health measurements, and medications/supplements. Taking proper care of ourselves is hard, 
but Live Better should make things easier.

### TEST PERSONNEL

- Will include various friends, classmates, and family members.

### PROGRAMMERS

- Jessica Taylor

## MANUAL TEST SECTION

### MANUAL TEST STRATEGY / EXTENT OF MANUAL TESTING:

Evaluate features and bug fixes that exist in this initial version of the Live Better application

### MANUAL TESTS

1. Check that the 'Symptoms' tab view is the default view that is seen when user logs into application <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that the symptom log tab view is the default view that is seen when user logs into application<br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Tap login <br/>
&nbsp;&nbsp;&nbsp; - Test Data: Performs as expected <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The 'Symptoms' tab view will be the default view that is seen when user logs into application <br/>
<br/>
2. Check symptom log UI when no symptoms have been entered <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check UI when there are no symptoms entered <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Tap login <br/>
&nbsp;&nbsp;&nbsp; - Test Data: Performs as expected <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: "No symptoms entered. Tap + to begin" <br/>
<br/>
3. Check that an empty symptom log sheet appears when '+' is tapped in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that an empty symptom log sheet appears when '+' is tapped in symptom tab view <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Tap login <br/>
&nbsp;&nbsp;&nbsp; - Test Data: Performs as expected <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: An empty symptom log sheet appears when '+' is tapped in the 'Symptoms' tab view <br/>
<br/>
4. Check that a logged symptom appears at top of 'Symptoms' tab view immediately when user taps "save" <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a logged symptom appears in the symptom log tab view immediately when user taps "save" <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Tap '+' in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter symptom information <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp; - Test Data: Performs as expected <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: Newly entered symptom will appear at top of the 'Symptoms' tab view <br/>
<br/>
5. Check that a logged symptom persists <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a logged symptom appears in the 'Symptoms' tab view indefinitely unless user deletes symptom <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Tap '+' in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter symptom information <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Monitor symptom log tab view in the days, weeks, and months to ensure symptom entry persists <br/>
&nbsp;&nbsp;&nbsp; - Test Data: Performs as expected <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: Symptoms will persist indefinitely unless user deletes the symptom <br/>
<br/>
6. Check that the logged symptoms are shown with the appropriate color based on symptom severity <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a logged symptom with severity: 'mild' appears as green in symptom log tab view <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Tap '+' in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter symptom information with 'mild' severity <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Check that the cell associated with the symptom entry shows as green <br/>
&nbsp;&nbsp;&nbsp; - Test Data: Performs as expected <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The cell associated with the symptom entry should appear as green in the 'Symptoms' tab view <br/>
<br/>
7. Check that the logged symptoms are shown with the appropriate color based on symptom severity <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a logged symptom with severity: 'moderate' appears as yellow in symptom log tab view <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Tap '+' in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter symptom information with 'moderate' severity <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Check that the cell associated with the symptom entry shows as yellow <br/>
&nbsp;&nbsp;&nbsp; - Test Data: Performs as expected <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The cell associated with the symptom entry should appear as yellow in the 'Symptoms' tab view <br/>
<br/>
8. Check that the logged symptoms are shown with the appropriate color based on symptom severity <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a logged symptom with severity: 'severe' appears as orange in symptom log tab view <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Tap '+' in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter symptom information with 'severe' severity <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Check that the cell associated with the symptom entry shows as orange <br/>
&nbsp;&nbsp;&nbsp; - Test Data: Performs as expected <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The cell associated with the symptom entry should appear as orange in the 'Symptoms' tab view <br/>
<br/>
9. Check that the logged symptoms are shown with the appropriate color based on symptom severity <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a logged symptom with severity: 'unbearable' appears as red in symptom log tab view <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap '+' in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Enter symptom information with 'unbearable' severity <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Check that the cell associated with the symptom entry shows as red <br/>
&nbsp;&nbsp;&nbsp; - Test Data: Performs as expected <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The cell associated with the symptom entry should appear as red in the 'Symptoms' tab view <br/>
<br/>
10. Check that the logged symptoms are shown with the appropriate color based on symptom severity <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a logged symptom with severity: 'none' appears as black in symptom log tab view <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Tap '+' in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter symptom information with 'none' severity <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Check that the cell associated with the symptom entry shows as black <br/>
&nbsp;&nbsp;&nbsp; - Test Data: Performs as expected <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The cell associated with the symptom entry should appear as black in the 'Symptoms' tab view <br/>
<br/>
11. Check that the user can delete a symptom entry <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that the user can delete a symptom entry <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed with user logged in and symptom created which exists in multiple time-frame based views <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Tap '+' in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter symptom information  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Check that the logged symptom is shown in the 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Select a symptom entry and swipe left to delete the symptom entry <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Check that the logged symptom that the user wishes to delete is deleted <br/>
&nbsp;&nbsp;&nbsp; - Test Data: Performs as expected <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged symptom that the user wishes to delete will be deleted within the 'Symptoms' tab view <br/>
<br/>
12. Check that the user can update a symptom entry <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that the user can update a symptom entry <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed with user logged in and symptom created which exists in multiple time-frame based views <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Tap '+' in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter symptom information  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Check that the logged symptom is shown in the 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Select a symptom entry and tap on the symptom entry to update symptom <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Update symptom entry and tap 'Save' <br/>
&nbsp;&nbsp;&nbsp; - Test Data: Performs as expected <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged symptom that the user wishes to update will be updated within the 'Symptoms' tab view <br/>
<br/>
13. Check user symptom entry input  <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that the user can log two different symptom entries within the same day that contain all the same symptom data and ensure the program recognizes the entries as two separate entries  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed with user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Tap '+' in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Enter symptom information  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Repeat steps 5 - 7 with the exact same symptom data <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Check that the logged symptoms with the exact same symptom data appears as two separate symptom entries <br/>
&nbsp;&nbsp;&nbsp; - Test Data: Performs as expected <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged symptoms with the same data and logged within the same day will appear in the 'Symptoms' tab view as two separate symptom entries <br/>
<br/>
14. Check user symptom entry input  <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that the program will still show a symptom entry if user tries to save an empty symptom log sheet  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed with user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Tap '+' in 'Symptoms' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Do not enter any symptom data  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Check that the program saves the entry <br/>
&nbsp;&nbsp;&nbsp; - Test Data: Performs as expected <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The program will show a symptom entry with a black cell (due to not logging severity) and only the time that the entry is created will be logged <br/>
<br/>
15. Check health measurements UI when no measurements have been entered <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check UI when there are no measurements entered <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Health Measurements' tab <br/>
&nbsp;&nbsp;&nbsp; - Test Data: Performs as expected <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: "No health measurements entered. Tap + to begin" <br/>
<br/>
16. Check that an empty health measurements log sheet appears when '+' is tapped on 'Health Measurements' tab view <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that an empty health measurements log sheet appears when '+' is tapped on 'Health Measurements' tab view  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Tap 'Health Measurements' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Tap '+'  <br/>
&nbsp;&nbsp;&nbsp; - Test Data: Performs as expected <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: An empty health measurements log sheet appears when '+' is tapped on the 'Health Measurements' tab view <br/>
<br/>
17. Check that a logged health measurement appears at top of 'Health Measurements' tab view immediately when user taps "save" <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a logged health measurement appears in the 'Health Measurements' tab view immediately when user taps "save" <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Tap 'Health Measurements' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Tap '+' in 'Health Measurements' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Enter health measurement data <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp; - Test Data: Performs as expected <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: Newly entered health measurement will appear at top of the 'Health Measurements' tab view <br/>
<br/>
18. Check that a logged health measurement persists <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a logged health measurement appears in the 'Health Measurements' tab view indefinitely unless user deletes measurement <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Tap 'Health Measurements' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Tap '+' in 'Health Measurements' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Enter health measurement data <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Monitor 'Health Measurements' tab view in the days, weeks, and months to ensure health measurement entry persists <br/>
&nbsp;&nbsp;&nbsp; - Test Data: Performs as expected <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: Health Measurement will persist indefinitely unless user deletes the entry <br/>
<br/>
19. Check that the user can delete a health measurement entry <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that the user can delete a health measurement entry and the entry will be deleted from the 'Health Measurements' tab  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed with user logged in and symptom created which exists in multiple time-frame based views <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Tap 'Health Measurements' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Tap '+' in 'Health Measurements' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Enter health measurement data  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Check that the logged health measurement is shown in the 'Health Measurements' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Select a health measurement entry and swipe left to delete the entry <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Check that the logged health measurement that the user wishes to delete is deleted <br/>
&nbsp;&nbsp;&nbsp; - Test Data: Performs as expected <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged health measurement that the user wishes to delete will be deleted from the 'Health Measurements' tab view <br/>
<br/>
20. Check that the user can update a health measurement entry <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that the user can update a health measurement entry <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed with user logged in and health measurement entry created <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Tap 'Health Measurements' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Tap '+' in 'Health Measurements' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Enter health measurement data  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Check that the logged health measurement is shown in the 'Health Measurements' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Select a health measurement entry and tap to update the entry <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Update entry and tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9. Check that the logged health measurement that the user wishes to update is updated <br/>
&nbsp;&nbsp;&nbsp; - Test Data: Performs as expected <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged health measurement that the user wishes to update within the 'Health Measurements' tab view <br/>
<br/>
21. Check user health measurement entry input  <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that the user can log two different health measurement entries within the same day that contain all the same data and ensure the program recognizes the entries as two separate entries  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed with user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Tap 'Health Measurements' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Tap '+' in 'Health Measurements' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Enter health measurement data  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Repeat steps 3 - 5 with the exact same health measurement data <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Check that the logged health measurements with the exact same data appears as two separate entries <br/>
&nbsp;&nbsp;&nbsp; - Test Data: Performs as expected <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged health measurements with the same data and logged within the same day will appear in the 'Health Measurements' tab view as two separate entries <br/>
<br/>
22. Check user health measurement entry input  <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that the program will still show a health measurement entry if user tries to save an empty health measurement log sheet  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed with user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Tap 'Health Measurements' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Tap '+' in 'Health Measurements' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Do not enter any data  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Check that the program saved the entry <br/>
&nbsp;&nbsp;&nbsp; - Test Data: Performs as expected <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The program will show a health measurement entry and only the time that the entry is created will be logged <br/>
<br/>
23. Check medication log UI when no medications have been entered <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check UI when there are no medications entered <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Tap 'Medications' tab <br/>
&nbsp;&nbsp;&nbsp; - Test Data: Performs as expected <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: "No medications/supplements entered. Tap + to get started" <br/>
<br/>
24. Check that an empty medication log sheet appears when '+' is tapped in 'Medications' tab view <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that an empty medication log sheet appears when '+' is tapped in 'Medications' tab view  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Tap 'Medications' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Tap '+' to show medication log sheet <br/>
&nbsp;&nbsp;&nbsp; - Test Data: Performs as expected <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: An empty medication log sheet appears when '+' is tapped in the 'Medications' tab view <br/>
<br/>
25. Check that a logged medication appears at the top of 'Medications' tab view immediately when user taps "save" <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a logged health measurement appears in the 'Health Measurements' tab view immediately when user taps "save" <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Tap 'Medications' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Tap '+' in 'Medications' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Enter medication/supplement information <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp; - Test Data: Performs as expected <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: Newly entered medication entries will appear at the top of the 'Health Measurements' tab view <br/>
<br/>
26. Check that a logged medication/supplement persists <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that a logged medication appears in the 'Medications' tab view indefinitely unless user deletes entry <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed and user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Medications' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Tap '+' in 'Medications' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Eenter medication/supplement information <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9. Monitor 'Medications' tab view in the days, weeks, and months to ensure health measurement entry persists <br/>
&nbsp;&nbsp;&nbsp; - Test Data: Performs as expected <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: Medication/supplement data will persist indefinitely unless user deletes the entry <br/>
<br/>
27. Check that the user can delete a medication entry <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that the user can delete a medication entry and the entry will be deleted from the 'Medications' tab  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed with user logged in and symptom created which exists in multiple time-frame based views <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Medications' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Tap '+' in 'Medications' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Enter a new medication/supplement  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Check that the logged medication is shown in the 'Medications' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9. Select a medication entry and swipe left to delete the entry <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10. Check that the logged medication that the user wishes to delete is deleted <br/>
&nbsp;&nbsp;&nbsp; - Test Data: Performs as expected <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged medication that the user wishes to delete will be deleted within the 'Medications' tab view <br/>
<br/>
28. Check that the user can update a medication entry <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that the user can update a medication entry <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed with user logged in and symptom created which exists in multiple time-frame based views <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Tap 'Medications' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Tap a medication entry in 'Medications' tab view <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Edit data in medication entry  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Check that the logged medication that the user wishes to update is updated <br/>
&nbsp;&nbsp;&nbsp; - Test Data: Performs as expected <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The logged medication that the user wishes to update will be updated within the 'Medications' tab view <br/>
<br/>
29. Check user medications entry input  <br/>
&nbsp;&nbsp;&nbsp; - Test Case: Check that the program will show an empty medication entry if user tries to save an empty medication log sheet  <br/>
&nbsp;&nbsp;&nbsp; - Pre Conditions: Live Better application must be installed with user logged in <br/>
&nbsp;&nbsp;&nbsp; - Test Step: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Launch application <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Tap 'Medications' tab <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Tap '+'  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Do not enter any data  <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Tap 'Save' <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Check that the program saves the empty medication entry <br/>
&nbsp;&nbsp;&nbsp; - Test Data: Performs as expected <br/>
&nbsp;&nbsp;&nbsp; - Expected Results: The program will show an empty medication log sheet in the 'Medications' tab view. The only visible data will be the time and date of the empty medication entry. <br/>
<br/>
