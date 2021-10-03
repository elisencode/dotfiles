#!/usr/bin/env zsh

# In Terminal zsh shell in `~/.dotfiles`, `git branch`, `git checkout homebrew`: run `./install` 
echo "\n<<< ====*Starting Homebrew Setup on Linux Debian or Ubuntu*==== >>>\n"

# ========= Warm-up =========
echo "\n<<< <(-°u°)/¨ ========= Warm-up ========= ¨\(°u°-)> >>>\n"

# Change directory to `~/.dotfiles`
echo "\n<<< \(-°0°)/ Change directory: cd ~/.dotfiles >>>\n"
cd ~/.dotfiles

echo "\n<<< \(-°0°)/ Print working directory: pwd >>>\n"
# Print working directory.
pwd

# What is my current Git branch
echo "\n<<< \(-°0°)/ What is my current Git branch? git branch >>>\n"
git branch
# Change Git branch to homebrew Git branch
echo "\n<<< \(-°0°)/ Change to my homebrew Git branch: git checkout homebrew >>>\n"
git checkout homebrew

# `SHELL` is just an environment variable. The user shoud set `SHELL` to the value of the preferred Shell.
echo "\n<<< \(-°0°)/ What is the user's preffed shell (default shell)? >>>\n"
echo "\n<<< \(-°0°)/ Give the full path: echo \$SHELL>>>\n"
echo $SHELL

# `$0` is the path of currently running program
# If the output of `echo $0` command is `-bash`, it means that `bash` was invoked as a login shell.
# If the output is only `bash`, then you are in a non-login shell. Read `man bash` the INVOCATION section.
echo "\n<<< \(-°0°)/ What is the name of your current shell? echo \$0 >>>\n"
echo $0

echo "\n<<< <(-°u°)/¨ ========= End Warm-up ========= ¨\(°u°-)> >>>\n"
# ========= End Warm-up =========


# ========= Let's go!  =========
echo "\n<<< ¨\( -°v°)/¨ ========= Let's go! ========= ¨\(°v°- )/¨ >>>\n"

# Debian or Ubuntu
echo "\n<<< \(°v°)/ Updating Linux Debian or Ubuntu: sudo apt-get update >>>\n"
sudo apt-get update
echo "\n<<< \(°v°)/ Updating Linux Debian or Ubuntu: sudo apdatedb >>>\n"
sudo updatedb
echo "\n<<<  \(°v°)/ Installing the Homebrew dependencies on Linux Debian or Ubuntu >>>\n"
sudo apt-get install build-essential procps curl file git


# Install Homebrew, a package manager for OS X.
# Packages are installable bundles of source code.
echo "\n<<< ~(^-^)~ Installing Homebrew, a package manager for OS X >>>\n"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add Homebrew to your PATH and to your bash shell profile script,
# either ~/.profile on Debian/Ubuntu or ~/.bash_profile on CentOS/Fedora/Red Hat.
echo "\n<<< ~(^-^)~ Adding Homebrew to your PATH and to your bash shell profile script >>>\n"
echo "\n<<< either ~/.profile on Debian/Ubuntu or ~/.bash_profile on CentOS/Fedora/Red Hat ~(^-^)~ >>>\n"
test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
test -r ~/.bash_profile && echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >>~/.bash_profile
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >>~/.profile

# Homebrew's own self-diagnosis tool, see if everything works the way it should
# and report back.
echo "\n<<< <(-o_O-)> Running Homebrew's own self-diagnosis tool: 'brew doctor' >>>\n"
brew doctor

# Mixing `/usr/local` with brewed and unbrewed stuff is not a good idea unless you know what you are doing.
echo "\n<<< <(-x_x-)> Mixing '/usr/local' with brewed and unbrewed stuff is not a good idea. >>>\n"

# Once this is done, run `brew update` in order to download new "formulae".
# `brew update` is for updating Homebrew, `brew upgrade` is for updating installed software.
echo "\n<<< ~(^-^)~ Running 'brew update' for updating Homebrew in order to download new 'formulae'. >>>\n"
brew update


# ========= Wait, another warm-up =========
echo "\n<<< <(-°n°)/¨ ========= Wait, another warm-up ========= ¨\(°n°-)> >>>\n"

# Show all locations path of brew:
echo "\n<<< \(-°0°)/ Print all matching executables in PATH, not just the first: which -a brew >>>\n"
which -a brew
# Where is locate brew symlink?
echo "\n<<< \(-°0°)/ Shows the full path of (shell) commands: which brew >>>\n"
which brew

# `$PATH` is a environment variable that is file location-related.
# When one types a command to run, 
# the system looks for it in the directories specified by `PATH` in the order specified.
echo "\n<<< \(-°0°)/ Show \$PATH (a environment variable that is file location-related): echo \$PATH >>>\n"
echo $PATH

echo "\n<<< <(-°n°)/¨ ========= End another warm-up ========= ¨\(°n°-)> >>>\n"
# ========= End another warm-up =========


# ========= Go! Go! Go! =========
echo "\n<<< ¨\( -°v°)/¨ ========= Go! Go! Go! ========= ¨\(°v°- )/¨ >>>\n"


# Brew Bundle : A Homebrew subcommand to run your Brewfile.
# Brew file : A file where you define softwares and applications you want to install.
# Brew tap : A Homebrew subcommand to add additional repositories which are not in the official formulae.
# Homebrew-cask : A tool which helps you to install Mac applications by using Homebrew.
# Homebrew : A package manager which helps you to install software. 
echo "\n<<< <(^.^)> You've done! What is Brew Bundle? A Homebrew subcommand to run your Brewfile. >>>\n"
echo "\n<<< <(^.^)> Next -> running: brew bundle --verbose >>>\n"
brew bundle --verbose

echo "\n<<< l( ¨ø_ø)/° You've done! List Homebrew dependencies (Packages) (Formulae) : brew bundle list --brews >>>\n"
brew bundle list --brews


# Show brew help
echo "\n<<< <( *@.@)/ brew help >>>\n"
brew help

# Show brew bundle help
echo "\n<<< <( *@.@)/ brew bundle --help >>>\n"
brew bundle --help


echo "\n<<< <(-'.'-)> ========= Fastest Run Completed! ========= <(-'.'-)> >>>\n"
# ========= Completed  =========

echo "\n<<< ( ^_^)o *** :dart: Well done and Congratulation!!!! :dart: **** o(^_^ ) >>>\n"
echo "\n<<< :thumbsup: Reinstalling everything on a new OS completed. >>>\n"
echo "\n<<< :grapes: The fruit of your labor is sweet. >>>\n"
echo "\n<<< :heart: and I must say you deserve it. +(-_-+) >>>\n"

# Run package: hello
hello