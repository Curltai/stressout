# Stressout

Stressout web3 super app integrates with popular social media platforms and provides a centralized hub for users to access and interact with their favorite content. With a content filtering middleware, we differentiate ourselves by effectively moderating user-generated content.
We employ two machine learning models for content filtering. The first model universally blocks offensive language and blurs filtered content. The second model is personalized, learning from user preferences and feedback to provide a more tailored filtering system.
To capture user emotions and feedback, we utilize sentiment analysis tools, surveys, and interactive features. Our platform operates on decentralized technology, ensuring enhanced security and privacy. By combining multiple applications within a unified interface, users can enjoy a range of functionalities through our centralized platform.

# Technical Implementation:

The proof of concept (POC) of our web3 super app has been implemented using Flutter, a cross-platform mobile development framework. Flutter allows us to build applications that run on both iOS and Android platforms, ensuring a consistent user experience across devices.

## Technologies and Tools:

1. **Flutter:** We chose Flutter as our development framework due to its ability to create high-performance, visually appealing, and responsive user interfaces using a single codebase.

2. **Firebase Authentication:** For the authentication functionality, we integrated Firebase Authentication, a robust authentication service provided by Google. It enables users to sign up and log in securely using email/password or other authentication providers.

3. **Machine Learning:** As part of our future plan, we will incorporate machine learning algorithms to filter posts, images, and blur sensitive content. The machine learning models will be trained on various data sources, including user feedback, sensors (such as camera and heart rate), and other relevant input.


## Architecture and System Design:

The architecture of our web3 super app follows a client-server model, with the client being the mobile application built using Flutter and the server components hosted on Firebase.

On the client-side, we have structured the app using a modular approach, separating different functionalities into distinct modules. The main modules include Authentication, Onboarding, Main Page, and Applications. Each module is responsible for its specific set of features and user interface components.

The server-side utilizes Firebase services for authentication, database management, and hosting. Firebase Authentication handles user authentication and ensures secure login and registration processes. Firebase Realtime Database is used to store and retrieve user data, content metadata, and other necessary information.

Overall, the technical implementation of our proof of concept relies on the power of Flutter for cross-platform development, Firebase for authentication and data management, and planned integration of machine learning for content filtering. This combination of technologies and tools allows us to deliver a robust and scalable web3 super app.


# Runing the Code:

To execute and test the proof of concept of our web3 super app, follow the step-by-step instructions below. These instructions assume that you have the necessary development environment set up, including Flutter and the required dependencies.

### Step 1: Clone the Repository

1. Open your terminal or command prompt.
2. Navigate to the directory where you want to clone the repository.
3. Execute the following command:

```
git clone https://github.com/Curltai/stressout.git
```

### Step 2: Set Up Flutter Environment

1. Make sure you have Flutter SDK installed on your machine. Refer to the official Flutter documentation for installation instructions specific to your operating system: https://flutter.dev/docs/get-started/install
2. nsure that Flutter is added to your system's PATH variable.


### Step 3: Install Dependencies

1. Open the terminal or command prompt.
2. Navigate to the root directory of the cloned repository.
3. Execute the following command to install the project dependencies

```
flutter pub get
```

### Step 4: Configure Firebase

1. Create a new Firebase project on the Firebase console: https://console.firebase.google.com/
2. Follow the instructions to set up Firebase Authentication for your project.
3. Enable email/password authentication

### Step 5: Run the App

1. Ensure you have a physical or virtual device set up and connected to your development environment.
2. Open the terminal or command prompt.
3. Navigate to the root directory of the cloned repository.

```
flutter run
```

### Step 6: Test the Functionality

1. Use the provided login and sign-up screens to authenticate with Firebase Authentication.
2. Navigate through the onboarding screens to familiarize yourself with the app's features and functionality.
3. Explore the main page, which includes the navigation bar, statistics, and the implemented applications (e.g., Instagram).
4. Interact with the app's features and verify that the static data is displayed correctly.
5. Keep in mind that the machine learning-based content filtering and blurring features are part of the future plan and are not yet implemented in this proof of concept.

Please note that the instructions provided here assume a basic understanding of Flutter development and familiarity with the necessary tools and dependencies. If you encounter any issues during the setup or execution process, refer to the official Flutter documentation or seek assistance from the Flutter developer community.


# Testing Methodologies:

For the validation of the proof of concept, we employed a manual testing approach. Although we didn't utilize extensive testing methodologies or frameworks, we ensured the accuracy, reliability, and performance of the proof of concept through the following approaches:

1. Functional Testing: We conducted functional testing to ensure that all the core features and functionalities of the app are working as intended. This involved manually testing each feature, such as authentication, onboarding, navigation, and the implemented applications, to verify that they perform their intended actions correctly.

2. User Interface (UI) Testing: We performed UI testing to ensure that the app's user interface is visually appealing, intuitive, and consistent across different screens and devices. This involved reviewing the layout, typography, colors, and overall design of the app to ensure a seamless user experience.

3. Usability Testing: We conducted usability testing by involving potential end-users to interact with the app and provide feedback on its usability. This allowed us to gather insights on user preferences, identify any usability issues or pain points, and make necessary improvements.

4. Performance Testing: While not extensively done, we did perform basic performance testing to assess the app's response time and general performance. We observed the app's behavior under different usage scenarios and checked for any noticeable delays, lags, or resource issues.



# Sources and Claims:

1. Flutter Framework:

    - Official Flutter website: https://flutter.dev/
    - Flutter GitHub repository: https://github.com/flutter/flutter

2. Firebase Authenticatione:

    - Firebase documentation: https://firebase.google.com/docs
    - Firebase GitHub repository: https://github.com/firebase/firebase-ios-sdk (for iOS)
    - Firebase GitHub repository: https://github.com/firebase/firebase-android-sdk (for Android)

3. Machine Learning for Content Filtering:

    - "Machine Learning Techniques for Content Filtering: A Comparative Study" by H. A. Basari, et al. (Link: https://www.researchgate.net/publication/2646781_Machine_Learning_Techniques_for_Content_Filtering_A_Comparative_Study)
    - "Real-Time Sentiment Analysis of Twitter Data for Predicting Stock Market Movements" by M. Mohammed, et al. (Link: https://www.researchgate.net/publication/327676003_Real-Time_Sentiment_Analysis_of_Twitter_Data_for_Predicting_Stock_Market_Movements)

4. Additional Resources:

    - Storyset website for illustrations: https://storyset.com/


# Limitations and Future Enhancements:

1. Scalability: The current proof of concept may have limitations in terms of handling a large number of users and scaling the backend infrastructure. To address this, future enhancements could involve optimizing the database design, implementing caching mechanisms, and adopting cloud-based solutions for scalability.

2. Machine Learning Integration: Although machine learning-based content filtering and blurring are part of our future plan, they are not implemented in the current proof of concept. Further development is required to integrate machine learning models, train them on relevant data, and fine-tune them for accurate content filtering based on user preferences and feedback.

3. Real-time Updates: The current proof of concept does not support real-time updates between users and the backend. Implementing real-time communication channels, such as WebSocket or Firebase Cloud Messaging, can enhance the user experience by providing instant notifications and updates.

4. Accessibility: The app's accessibility features are not fully implemented in the current proof of concept. Future enhancements could involve incorporating accessibility guidelines and ensuring compatibility with screen readers, font size adjustments, and color contrast enhancements.


# Supporting Materials

- Design of product: [figma.com/stressout](https://www.figma.com/file/CO1A4nLoEq7k6uMqxJ4KAP/StressOut?type=design&node-id=1%3A5&t=46st7pI82VkiAXC8-1)
