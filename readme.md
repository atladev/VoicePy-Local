# VoicePy Local Version

A sleek, modern desktop application for generating high-quality audio narrations from text documents using AI voices. Built with Python and powered by Coqui TTS.

![Python](https://img.shields.io/badge/python-3.8+-blue.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)
![Platform](https://img.shields.io/badge/platform-Windows%20%7C%20Linux%20%7C%20macOS-lightgrey.svg)

## ✨ Features

- 🎨 **Modern Dark UI** - Beautiful, user-friendly interface
- 🗣️ **Multi-language Support** - English, Portuguese, Spanish
- 🎵 **Voice Preview** - Test voices before generation
- 📄 **Batch Processing** - Convert entire documents at once
- ⚡ **GPU Acceleration** - CUDA support for faster generation
- 🔊 **Audio Preview** - Built-in audio player
- 📊 **Progress Tracking** - Real-time generation status
- 💾 **Error Handling** - Saves problematic paragraphs for review

## 🚀 Quick Start

### Prerequisites

- Python 3.8 or higher
- NVIDIA GPU with CUDA (optional, for faster processing)
- At least 4GB of free RAM

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/tts-audio-generator.git
   cd tts-audio-generator
   ```

2. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   ```

3. **Run the application**
   ```bash
   python tts_generator.py
   ```

### Dependencies

Create a `requirements.txt` file with:

```
TTS>=0.22.0
torch>=2.0.0
python-docx>=0.8.11
pygame>=2.5.0
Pillow>=10.0.0
```

## 📖 Usage Guide

### 1. Select Voice Folder
- Click "Browse" next to "Voice Folder"
- Navigate to your folder containing `.wav` voice samples
- Voice files will appear in the list

### 2. Choose a Voice
- Click on any voice in the list to select it
- Click "🔊 Preview Selected Voice" to hear the voice sample

### 3. Test TTS (Optional)
- Enter test text in the "Test Text" box
- Click "🎵 Generate Test Audio" to hear a sample
- Adjust settings if needed

### 4. Select Document
- Click "📄 Select Document"
- Choose your `.docx` file containing the text to narrate

### 5. Configure Output
- Set your desired output directory
- Select the narration language (English/Portuguese/Spanish)

### 6. Generate Audio
- Click "⚡ Generate All Audio Files"
- Wait for the process to complete
- Output folder will open automatically

## 🎯 How It Works

1. **Document Parsing**: Reads `.docx` files and extracts paragraphs
2. **Text Processing**: Splits text into manageable chunks
3. **Voice Cloning**: Uses your provided voice sample to clone speech
4. **Audio Generation**: Creates individual audio files for each paragraph
5. **Error Handling**: Saves any problematic paragraphs to a separate document

## 📁 Output Structure

```
TTS_Output/
└── en_your_document_name/
    ├── audio_1.wav
    ├── audio_2.wav
    ├── audio_3.wav
    ├── ...
    └── errors.docx (if any errors occurred)
```

## 🎨 Voice Samples

For best results, your voice samples should:
- Be at least 6 seconds long
- Have clear, clean audio
- Be in `.wav` format
- Have minimal background noise
- Feature natural speech patterns

## ⚙️ Advanced Configuration

### GPU Acceleration

If you have an NVIDIA GPU with CUDA:
- The application automatically detects and uses CUDA
- No additional configuration needed
- Significantly faster generation times

### Custom TTS Models

The application uses `xtts_v2` by default. To use a different model:
1. Open `tts_generator.py`
2. Modify the `DEFAULT_MODEL` constant
3. Restart the application

## 🐛 Troubleshooting

### "No voices found"
- Ensure your voice folder contains `.wav` files
- Check folder permissions

### "CUDA out of memory"
- Close other GPU-intensive applications
- Reduce document size
- Use CPU mode (slower but works)

### "Module not found" errors
- Reinstall dependencies: `pip install -r requirements.txt --upgrade`

### Audio quality issues
- Use higher quality voice samples
- Ensure voice sample matches target language
- Try different voice samples

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🙏 Acknowledgments

- [Coqui TTS](https://github.com/coqui-ai/TTS) - For the amazing TTS engine
- [XTTS-v2](https://huggingface.co/coqui/XTTS-v2) - For the voice cloning model

## 🌟 Star History

If you find this project useful, please consider giving it a star ⭐

---

**Made with ❤️ using Python and Coqui TTS**