#/bin/bash
echo "___________                    ________    _________"
echo "\\__    ___/____  __ _____  ___ \\_____  \\  /   _____/"
echo "  |    | /     \\|  |  \\  \\/  /  /   |   \\ \\_____  \\ "
echo "  |    ||  Y Y  \\  |  />    <  /    |    \\/        \\"
echo "  |____||__|_|  /____//__/\\_ \\ \\_______  /_______  /"
echo "              \\/            \\/         \\/        \\/ "
echo "  Developed with JavaScript and ♥ by Ionică Bizău"

TMUXOS_ROOT="/home/$USER/.tmux"
TMUXOS_CORE_GIT="https://github.com/TmuxOS/TmuxOS.git"
TMUXOS_RESOURCES="https://github.com/TmuxOS/Resources.git"

# Install dependencies
# TODO

# XSession
echo "> Copying xsession file ..."
sudo cp ./usr/share/xsessions/tmuxos.desktop /usr/share/xsessions/

# Executable file
echo "> Copying executable file ..."
sudo cp ./usr/bin/tmuxos /usr/bin

# Init root
if [ -d "$TMUXOS_ROOT" ]; then
    rm -rf $TMUXOS_ROOT
fi
mkdir -p $TMUXOS_ROOT

# Download files
cd $TMUXOS_ROOT
git clone $TMUXOS_CORE_GIT .
git clone $TMUXOS_RESOURCES ./_resources
cp _resources/splash/tmuxos.png ./

echo "Install complete."

read -p "Do you want to start tmuxos now?" -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
    tmuxos
fi
