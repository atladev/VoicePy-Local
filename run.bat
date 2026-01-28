@echo off
cd /d "C:\..."
start "" "C:\Python\Python311\Scripts\streamlit.exe" run main.py --server.address 192.168.0.x --server.port 8501
