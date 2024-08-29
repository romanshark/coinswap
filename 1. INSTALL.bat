@echo off

if not exist ".git" (
    git init
    git add .
    git remote add origin https://github.com/OxFF00FF/Hamster_Mayhem.git
)


echo Creating virtual environment...
python -m venv venv

echo Activating virtual environment...
call venv\Scripts\activate

echo Installing dependencies...
pip install -r requirements.txt

echo Copying .env.example to .env...
copy .env.example .env

echo Please edit the .env file to add your HAMSTER_TOKEN

pause
