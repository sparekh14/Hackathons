# 🤖 HackDefy Voice Assistant

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Speech Recognition](https://img.shields.io/badge/Speech_Recognition-FF6B6B?style=for-the-badge)
![Text to Speech](https://img.shields.io/badge/Text_to_Speech-4ECDC4?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Complete-brightgreen?style=for-the-badge)

**🏆 HackDefy 2.0 • March 26-28, 2021**

An intelligent voice-powered assistant that brings the future of human-computer interaction to your desktop. Built with Python's powerful ecosystem, this assistant combines speech recognition, natural language processing, and real-time data integration to create a seamless conversational experience.

## ✨ Features

### 🎤 Core Voice Capabilities
- **Advanced Speech Recognition** - Powered by Google's speech recognition API
- **Natural Text-to-Speech** - Clear, human-like voice responses using pyttsx3
- **Continuous Listening** - Always ready to accept voice commands
- **Error Handling** - Robust audio processing with graceful error recovery

### 🛠️ Productivity Tools
- **📝 Smart Note Taking** - Create and save notes with voice commands
- **🌐 Website Navigation** - Open popular websites instantly
- **⏰ Time & Date** - Get current time and date information
- **🧮 Voice Calculator** - Solve mathematical equations hands-free

### 🌍 Real-Time Information
- **🌤️ Weather Updates** - Get current weather for any city
- **📈 Stock Prices** - Fetch live stock market data
- **📰 Dynamic Content** - Access to real-time information APIs

### 🎭 Entertainment
- **😄 Joke Collection** - Multiple joke categories including tongue-twisters
- **💬 Conversation Mode** - Engage in natural conversations
- **🎲 Interactive Features** - Fun and engaging user interactions

## 🏗️ Architecture

The project follows a modular architecture with specialized components:

```
HackDefy/
├── main.py              # Main application logic
├── features/            # Modular feature implementations
│   ├── conversation.py  # Conversational AI capabilities
│   ├── calculator.py    # Mathematical computation engine
│   ├── stocks.py        # Stock market data integration
│   ├── weather.py       # Weather information service
│   ├── websites.py      # Website automation utilities
│   ├── jokes.py         # Entertainment and humor
│   └── time_info.py     # Date and time utilities
└── README.md
```

## 🚀 Quick Start

### Prerequisites

```bash
# Python 3.7+ required
python --version

# Install required packages
pip install speechrecognition
pip install pyttsx3
pip install gtts
pip install pyjokes
pip install pyaudio
```

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/hackdefy-voice-assistant.git
   cd hackdefy-voice-assistant
   ```

2. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   ```

3. **Run the assistant**
   ```bash
   python main.py
   ```

## 🎮 Usage Examples

### Basic Commands

| Voice Command | Action | Example |
|---------------|--------|---------|
| "What can you do?" | Shows available commands | Lists all capabilities |
| "Make a note" | Creates a new note | "Make a note" → "What would you like me to write down?" |
| "What is the time?" | Speaks current time | "The current time is 3:30 PM" |
| "Tell me a joke" | Shares a random joke | Various joke categories available |
| "What is the weather?" | Gets weather information | Asks for city and state |
| "Get me a stock price" | Fetches stock data | Asks for stock symbol |
| "Let's have a conversation" | Starts conversation mode | Interactive chat experience |
| "I have a math equation" | Opens calculator | Voice-controlled calculations |
| "Exit" or "Quit" | Closes the application | Graceful shutdown |

### Advanced Features

**🌐 Website Navigation**
```
"Open a website" → Provides list of supported sites
- YouTube, Amazon, Walmart, Nike, Adidas, and more
```

**🌤️ Weather Information**
```
"What is the weather?" 
→ "What city's weather would you like?"
→ "What is the acronym of the state?"
→ Provides current weather conditions
```

**📈 Stock Market Data**
```
"Get me a stock price"
→ "What is the symbol of your stock?"
→ Provides current stock information
```

## 🔧 Technical Implementation

### Key Libraries Used

- **`speech_recognition`** - Google Speech Recognition API integration
- **`pyttsx3`** - Cross-platform text-to-speech synthesis
- **`gtts`** - Google Text-to-Speech for enhanced voice quality
- **`datetime`** - Time and date utilities
- **`webbrowser`** - Automated web navigation
- **`pyjokes`** - Entertainment content generation

### Voice Recognition Pipeline

1. **Audio Capture** - Microphone input processing
2. **Speech-to-Text** - Google API conversion
3. **Intent Recognition** - Command parsing and categorization
4. **Action Execution** - Feature-specific processing
5. **Response Generation** - Text-to-speech output

## 🎯 Core Features Breakdown

### 📝 Note Taking System
- Voice command activation
- Real-time transcription
- Custom note titles
- File system integration

### 🌐 Web Automation
- Pre-configured popular websites
- Voice-controlled navigation
- Seamless browser integration

### 🧮 Mathematical Capabilities
- Basic arithmetic operations
- Complex equation solving
- Voice input/output
- Error handling for invalid expressions

### 💬 Conversation Engine
- Natural language processing
- Context-aware responses
- Interactive dialogue management
- Personality-driven interactions

## 🚧 Future Enhancements

- [ ] **GUI Interface** - Modern desktop application
- [ ] **API Integrations** - News, calendar, email
- [ ] **Smart Home Control** - IoT device integration
- [ ] **Machine Learning** - Personalized responses
- [ ] **Multi-language Support** - International accessibility
- [ ] **Voice Training** - Custom voice recognition
- [ ] **Plugin Architecture** - Extensible feature system

## 🐛 Troubleshooting

### Common Issues

**Microphone Not Working**
```bash
# Check audio permissions
# Ensure PyAudio is properly installed
pip install pyaudio
```

**Speech Recognition Errors**
- Check internet connection (Google API required)
- Verify microphone settings
- Reduce background noise

**Module Import Errors**
```bash
# Reinstall dependencies
pip install --upgrade speechrecognition pyttsx3
```

## 🤝 Contributing

Contributions are welcome! Please feel free to submit pull requests or open issues for:

- 🐛 Bug fixes
- ✨ New features
- 📚 Documentation improvements
- 🧪 Testing enhancements

## 📄 License

This project was created for HackDefy 2.0 (March 26-28, 2021) and is available for educational purposes.

## 🌟 Acknowledgments

- **HackDefy 2.0** organizers for the amazing hackathon experience
- **Google Speech Recognition** for powerful voice processing
- **Python community** for excellent libraries and documentation
- **Open source contributors** who made the underlying technologies possible

---

<div align="center">

**🎤 "Hello, and welcome to the best voice assistant you have ever used!"**

*Built with ❤️ during 48 hours of intensive coding*

</div>
