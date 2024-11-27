# Project Documentation <!-- omit in toc -->

- [PROJECT INFORMATION](#project-information)
- [STATEMENT OF PURPOSE](#statement-of-purpose)
- [RESEARCH AND BACKGROUND](#research-and-background)
- [LANGUAGES, SOFTWARE, HARDWARE](#languages-software-hardware)
- [PROJECT REQUIREMENTS](#project-requirements)
- [IMPLEMENTATION DESCRIPTION AND EXPLANATION](#implementation-description-explanation)
- [TEST PLAN AND RESULTS](#test-plan-and-results)
- [CHALLENGES OVERCOME](#challenges-overcome)
- [FUTURE ENHANCEMENTS](#future-enhancements)
- [DEFENSE PRESENTATION SLIDES](#defense-presentation-slides)

## PROJECT INFORMATION 

- **Project Title:** Live Better
- **Date Completed:** November 25, 2024
- **Student's Name:** Jessica Taylor
- **Student's Degree and Major:** Bachelor of Science in Cybersecurity
- **Project Advisor:** Dr. Sean Hayes

### STATEMENT OF PURPOSE

Live Better is a personal medical manager application. This is an IOS application which provides a secure, user-friendly, 
and fully customizeable medical manager to anyone looking to improve their health and/or manage a chronic physical or mental health condition. This app gives users the ability to track symptoms, health measurements, and medications/supplements. Taking proper care of ourselves is hard, but Live Better should make things easier.

An all-in-one secure personal medical manager application should be convenient for users to track symptoms, health measurements, and medications. The application is secure, easily customizable, organized, and functions quickly and efficiently. Current symptom tracking applications, such as Bearable, CareClinic, and Symptom Tracker lack customizability, organization, and/or features such as note taking, appointment recordings, medication log, and lifestyle factors. In addition, some of these applications can be complicated and difficult for users to navigate. These shortfalls significantly reduce the number of users that can effectively use the application and therefore, miss out on the opportunity to take better control of their health.

Making modifications to the current structure of some of the well-known symptom tracking applications will allow for additional customizability and organization. Users will greatly benefit from these modifications by allowing the application to be useable for users with any one or more physical or mental health symptoms/conditions. Adding additional features will ensure users a true all-in-one medical management application, such that all symptoms, medications, and health measurements can be organized and managed in one single and convenient application. In recent years, there has been a much-needed surge of symptom tracker applications being made available to IOS users; however, these applications often fall short in customization and ease of use thereby, creating the need for an application that is fully customizable and allows users to keep all medical data and notes in one user friendly applications.

### RESEARCH AND BACKGROUND

  Research required for this project includes use of XCode, Swift and SwiftUI syntax, along with incorporation of SwiftData. Below are resources used in the development of this project:

- [General Swift information - Apple](https://developer.apple.com/swift/#safety)
- [General SwiftUI information - Apple](https://developer.apple.com/xcode/swiftui/)
- [Date Picker information - Hacking With Swift](https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-a-date-picker-and-read-values-from-it)
- [Date Picker information - Apple](https://developer.apple.com/documentation/swiftui/datepicker)
- [Text alignment information - Apple](https://forums.developer.apple.com/forums/thread/707308)
- [Button information - Apple](https://developer.apple.com/documentation/swiftui/button)
- [Identifiable protocol - Apple](https://developer.apple.com/documentation/swift/identifiable)
- [ObservableObject protocol - Apple](https://developer.apple.com/documentation/combine/observableobject)
- [State property wrapper - Apple](https://developer.apple.com/documentation/swiftui/state)
- [General intro to Swift - YouTube](https://www.youtube.com/watch?v=mvXFGikltPc)
- [Filter results of SwiftData query - YouTube](https://www.youtube.com/watch?v=mvXFGikltPc)
- [Sorting query results - YouTube](https://www.youtube.com/watch?v=mqLDroFreFE)
- [Querying SwiftData objects in SwiftUI - YouTube](https://www.youtube.com/watch?v=Saw_sZWa4aQ)
- [SwiftData starter information - YouTube](https://www.youtube.com/watch?v=FEKCAzPAtpg&list=PLuoeXyslFTuZ9Nag8qTVz5wQ7zRprxMxN)
- [Defining SwiftData model - YouTube](https://www.youtube.com/watch?v=kiFQevfpuKQ&list=PLuoeXyslFTuZ9Nag8qTVz5wQ7zRprxMxN&index=3)
- [Working with SwiftData model objects - YouTube](https://www.youtube.com/watch?v=w4BQnVn7H6M&list=PLuoeXyslFTuZ9Nag8qTVz5wQ7zRprxMxN&index=5)
- [Filtering and sorting persistent data - Apple](https://developer.apple.com/documentation/swiftdata/filtering-and-sorting-persistent-data)
- [Creating tab views - Hacking With Swift](https://www.hackingwithswift.com/books/ios-swiftui/creating-tabs-with-tabview-and-tabitem)
- [Tab view tutorial - YouTube](https://www.youtube.com/watch?v=DLj9yM-zLyc)
- [SwiftData general information - Apple](https://developer.apple.com/documentation/swiftdata/)

### LANGUAGES, SOFTWARE, HARDWARE

- **Implementation Language:** Swift
- **Database:** SwiftData
- **Libraries:** SwiftUI
- **Software:** MacOS, XCode, XCode Simulator, Playgrounds (for learning)
- **Hardware:** Computer running MacOS

### PROJECT REQUIREMENTS

[Link to my project requirements GitHub file](https://github.com/JessicaTaylor7/CSU-Senior-Project/blob/master/docs/Requirements.md)

### IMPLEMENTATION DESCRIPTION AND EXPLANATION

[Link to my project design and features GitHub file](https://github.com/JessicaTaylor7/CSU-Senior-Project/blob/master/docs/DesignAndFeatures.pdf)

[Link to my project source code GitHub repository](https://github.com/JessicaTaylor7/CSU-Senior-Project/tree/master/src/LiveBetter)

### TEST PLAN AND RESULTS

[Link to my project test plan and results GitHub file](https://github.com/JessicaTaylor7/CSU-Senior-Project/blob/master/docs/Test-Plan.md)

### CHALLENGES OVERCOME

Throughout this project, I have overcome many challenges. The first major challenge I experienced is learning the Swift syntax with addition of SwiftUI and SwiftData as this is not a language that I have learned in pursuit of my degree. Swift is not necessarily a difficult language to learn, I just find it different in that it does so much behind the scenes and the programmer needs to know how to use the libraries offered. 

Another challenge I experienced on multiple occasions is my project crashing and throwing errors. This has been an incredibly frustrating obstacle and one that I still have not figured out. Based on my research, it appears many other non-paid developers have experienced similar problems and many have chalked it up to a random bug in XCode. I have found that to overcome this challenge, I have to copy and paste my project files elsewhere, delete my project files in XCode, and then copy and paste my project files back into XCode under a new project name. 

Additionally, keeping my project files and GitHub repository files stored in multiple places saved my entire project during the construction phase when I accidentally deleted my entire project repository from GitHub while trying to link my respository with XCode. I'm so happy I was able to just create a new repository and upload everything into the new repository because I had it saved on my computer and in my iCloud...this incident definitely made me thankful for keeping backups!

Lastly and most importantly, I had to work around a major change Apple implemented over the summer with non-paid developer accounts being significantly limited in what features can be used. This change affected my ability to use CloudKit for cloud based data storage along with HealthKit for synching health data from a user's Apple Watch to LiveBetter in the Health Measurements tab. Additionally, this also prevented me from using TestFlight which would allow my friends and family to install a version of LiveBetter on their iPhone for beta testing. Due to this, I had to allow them to test the application on my laptop. Non of this is ideal and it significantly limited the features I originally intended on having in my application; however, it gives me a lot to discuss in the future enhancements section. 

### FUTURE ENHANCEMENTS

In the future, I may consider paying the annual fee for paid Apple Developer account, which will grant me access to features such as CloudKit, HealthKit, FireBase, and TestFlight. With this, I can greatly improve LiveBetter making the application more usable. Below is a list of future enhancements for the LiveBetter application:

- Utilize FireBase to implement cloud based login functionality, adding to application security
- Utilize CloudKit instead of SwiftData for a cloud based database. This also allows for use of HealthKit
- Utilize HealthKit for synchronization of health data, such as step count, heart rate, blood glucose, etc. in Health tab
- Allow users to create pre-made symptom and medication data to make entries more convenient with the option to select a pre-made symptom or  medication and simply edit time/date and other relevent information.
- Add additional features such as alerts/reminders for medications/appointments, appointment information/notes, lifestyle factors log, and 
  maybe even the ability to take voice recordings of appointments or have an AI feature that can take written notes.
- Improve the aesthetic of the application by adding a calming neutral color scheme and make the overall look of the app feel more professional
- Allow beta testing of the application using TestFlight, so I can receive feedback after others have spent time testing it

### DEFENSE PRESENTATION SLIDES


