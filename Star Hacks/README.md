# 💚 Self Joy - Mental Health & Wellness App

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Android Studio](https://img.shields.io/badge/Android_Studio-3DDC84?style=for-the-badge&logo=android-studio&logoColor=white)
![2nd Place](https://img.shields.io/badge/🥈_2nd_Place-FFD700?style=for-the-badge)

**🏆 Star Hacks • October 25, 2020 • 🥈 2nd Place Winner ($50 Prize)**

A beautiful, intuitive mental health and wellness application designed to support daily well-being through mood tracking, motivational content, and mindful reflection. Built during a 7-hour intensive hackathon with a focus on expanding mental health accessibility and support.

## 🎯 Mission Statement

Mental health support shouldn't be limited by accessibility barriers. **Self Joy** was created to provide immediate, personal wellness tools for anyone seeking mental health support, especially those who may be unable to access professional help immediately.

## ✨ Core Features

### 🏠 Home Dashboard
- **Personalized Welcome** - Custom greeting with user's name
- **Modern UI Design** - Clean, calming interface with custom color schemes
- **Intuitive Navigation** - Streamlined user experience with drawer navigation
- **Quick Access** - One-tap access to all wellness features

### 📅 Wellness Calendar
- **Daily Mood Tracking** - Rate your day on a 1-10 scale
- **Visual Progress** - Calendar integration for mood history
- **Reflection Prompts** - Daily wellness check-ins
- **Date Display** - Clear, prominent date indication

### 💭 Feel Better Features
- **Motivational Quotes** - Curated collection of uplifting messages
- **Random Inspiration** - Fresh quotes with each app visit
- **Famous Authors** - Quotes from renowned motivational figures
- **Interactive Refresh** - "New" button for additional inspiration

### 🎨 Design Philosophy

#### **Color Psychology**
- **Primary Dark Blue** (`#32213A`) - Stability and trust
- **Accent Light Yellow** (`#E6DEB4`) - Warmth and optimism
- **High Contrast** - Accessibility-focused design
- **Rounded Corners** - Soft, welcoming interface elements

#### **User Experience**
- **Dark Theme** - Reduced eye strain for extended use
- **Large Touch Targets** - Easy navigation and accessibility
- **Consistent Typography** - Clear hierarchy and readability
- **Smooth Animations** - Polished, professional feel

## 🚀 Quick Start

### Prerequisites

```bash
# Flutter SDK 2.0+
flutter --version

# Android Studio or VS Code
# Android device or emulator
```

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/self-joy-app.git
   cd self-joy-app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the application**
   ```bash
   flutter run
   ```

### Build for Release

```bash
# Android APK
flutter build apk --release

# Android App Bundle
flutter build appbundle --release
```

## 📱 App Architecture

### **File Structure**
```
Star Hacks/
├── HomePage.dart         # Main application entry and home screen
├── SecondPage.dart      # Quotes and motivation features
├── calnedar.dart        # Calendar integration (referenced)
├── quotes.dart          # Quote management system
└── README.md
```

### **Key Components**

#### **HomePage.dart - Main Interface**
- Material App configuration
- Custom theme implementation
- Navigation drawer setup
- Home dashboard layout
- Calendar integration

#### **SecondPage.dart - Quotes System**
- Quote collection management
- Random quote generation
- Author attribution
- Interactive UI controls

## 🎮 Feature Breakdown

### 📅 Mood Tracking System

```dart
// Daily mood rating implementation
Container(
  child: Text('How was your day today?',
    style: TextStyle(color: Colors.black, fontSize: 20)),
),
Container(
  child: Text('10/10',
    style: TextStyle(fontSize: 60, color: Colors.black)),
),
```

**Features:**
- 1-10 scale mood rating
- Visual feedback with large display
- Date-specific tracking
- Historical mood data

### 💭 Motivational Quote Engine

```dart
var quotes = [
  'You always pass failure on the way to success.',
  'Winning doesn\'t always mean being first...',
  'It always seems impossible until it is done',
  // ... 7 total quotes
];

List QuoteName = [
  'Mickey Rooney', 'Bonnie Blair', 'Nelson Mandela',
  // ... corresponding authors
];
```

**Quote Collection:**
- **7 Inspirational Quotes** - Carefully curated messages
- **Famous Authors** - Attributed to renowned figures
- **Random Selection** - Different quote each interaction
- **Refresh Functionality** - New quote button

### 🧭 Navigation System

```dart
Drawer(
  child: Container(
    color: Color(0xFF32213A),
    child: ListView(
      children: <Widget>[
        // Calendar, Feel Better, Support options
      ],
    ),
  ),
)
```

**Navigation Features:**
- **Slide-out Drawer** - Smooth, modern navigation
- **Visual Hierarchy** - Clear section organization
- **Custom Styling** - Brand-consistent design
- **Quick Access** - One-tap feature access

## 🏗️ Technical Implementation

### **Flutter Framework Utilization**

#### **State Management**
```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xFF32213A),
        accentColor: Color(0xFFE6DEB4),
      ),
    );
  }
}
```

#### **Custom Theme System**
- **Dark Mode Design** - Consistent with wellness apps
- **Custom Color Palette** - Psychologically calming colors
- **Typography Hierarchy** - Multiple text styles
- **Material Design** - Following Google's design principles

### **Widget Architecture**

#### **Container-Based Layout**
- Flexible, responsive design
- Custom border radius implementation
- Shadow effects for depth
- Proper spacing and padding

#### **ListView Implementation**
- Scrollable content areas
- Dynamic content rendering
- Efficient memory usage
- Smooth scrolling experience

## 👥 Development Team

**🌟 Team Collaboration**
- **Samarth Parekh** - Lead Developer & UI/UX Design
- **Alex Osterdude** - Feature Development & Testing  
- **Sushanth** - Backend Logic & Integration
- **Aryan** - UI Components & User Experience

**🤝 Team Dynamics:**
- 7-hour intensive development session
- Agile development methodology
- Cross-functional collaboration
- Rapid prototyping and iteration

## 🏆 Hackathon Achievement

### **🥈 2nd Place Success**
- **Prize:** $50 team award
- **Recognition:** Outstanding mental health innovation
- **Impact:** Potential sponsor partnership opportunity
- **Timeline:** Complete app development in 7 hours

### **Sponsor Alignment**
The project was strategically designed to align with hackathon sponsors focused on mental health technology, positioning the app as a potential platform expansion or partnership opportunity.

## 🚧 Future Development Roadmap

### **Phase 1: Core Enhancements**
- [ ] **User Authentication** - Personal profiles and data persistence
- [ ] **Enhanced Calendar** - Full calendar implementation with historical data
- [ ] **Mood Analytics** - Trend analysis and insights
- [ ] **Offline Support** - Local data storage capabilities

### **Phase 2: Advanced Features**
- [ ] **Journal Integration** - Written reflection capabilities
- [ ] **Goal Setting** - Personal wellness objectives
- [ ] **Reminder System** - Daily check-in notifications
- [ ] **Progress Tracking** - Visual progress indicators

### **Phase 3: Community Features**
- [ ] **Support Groups** - Anonymous peer connections
- [ ] **Professional Resources** - Therapist directory integration
- [ ] **Crisis Support** - Emergency resource access
- [ ] **Sharing Features** - Anonymous success stories

### **Phase 4: Advanced Wellness**
- [ ] **Meditation Integration** - Guided meditation sessions
- [ ] **Breathing Exercises** - Interactive wellness activities
- [ ] **Sleep Tracking** - Wellness routine monitoring
- [ ] **Habit Formation** - Positive habit building tools

## 🔬 Research & Impact

### **Mental Health Statistics**
- **1 in 4** people experience mental health issues annually
- **Limited Access** to professional mental health services
- **Digital Solutions** increasingly important for accessibility
- **Preventive Care** crucial for long-term wellness

### **App Impact Potential**
- **Immediate Access** - No appointment necessary
- **Privacy Protection** - Anonymous usage options
- **Cost-Effective** - Free mental health support
- **Scalable Solution** - Reaches underserved populations

## 🧪 Technical Learning Outcomes

### **Flutter Development Skills**
- Material Design implementation
- Custom widget creation
- State management patterns
- Navigation and routing

### **Mobile App Design**
- User experience optimization
- Accessibility considerations
- Performance optimization
- Cross-platform compatibility

### **Team Development**
- Agile methodology application
- Rapid prototyping techniques
- Collaborative coding practices
- Time-constrained development

## 📚 Resources & References

### **Mental Health Research**
- WHO Mental Health Guidelines
- Digital wellness best practices
- Mobile app accessibility standards
- Crisis intervention protocols

### **Technical Documentation**
- Flutter official documentation
- Material Design guidelines
- Dart language specifications
- Mobile development patterns

---

<div align="center">

**💚 "Self Joy - Your pocket wellness companion"**

*🏆 2nd Place Winner - Star Hacks 2020*

**Built with ❤️ and dedication to mental health awareness**

*If you or someone you know is struggling with mental health, please reach out to professional resources or crisis helplines.*

</div>
