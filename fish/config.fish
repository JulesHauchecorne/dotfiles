starship init fish | source
zoxide init fish | source
function fish_greeting
end
fish_vi_key_bindings
set -x JDTLS_HOME /home/jules/.cache/nvim/nvim-lsp/jdtls/
alias bat "batcat"
alias d "dmenu_run"
alias treeMax "exa --tree --icons"
alias tree "exa --tree --level=2 --icons"
alias ll "exa -x -g --icons"
alias lla "exa -x -g -a --icons"
alias dmode "fish_default_key_bindings"
alias vmode "fish_vi_key_bindings"
alias v "/usr/bin/nvim"
alias vim "/usr/bin/nvim"
alias nvim "/usr/bin/nvim"
alias o "xdg-open"
alias Fzf "fzf --preview='head -$LINES {}' --reverse --bind 'enter:execute(nvim {})'"
alias pullpush "bash ~/code/script/pullpush.sh"
alias sonar-scanner "/home/jules/bin/sonar-scanner-cli-4.6.2.2472-linux/sonar-scanner-4.6.2.2472-linux/bin/sonar-scanner"
#alias bganimegirl "gsettings set org.gnome.desktop.background picture-uri file:////usr/share/backgrounds/animegirl.jpg"
#alias Bgforestpath "gsettings set org.gnome.desktop.background picture-uri file:////usr/share/backgrounds/forestpath.jpg"
#alias Bgfantazypanorama "gsettings set org.gnome.desktop.background picture-uri file:////usr/share/backgrounds/fantazypanorama.jpg"
#alias BgjapPainting "gsettings set org.gnome.desktop.background picture-uri file:////usr/share/backgrounds/japPainting.jpg"
#alias Bgprettyface "gsettings set org.gnome.desktop.background picture-uri file:////usr/share/backgrounds/prettyface.jpg"
#alias Bgsakuradark "gsettings set org.gnome.desktop.background picture-uri file:////usr/share/backgrounds/sakuradark.jpg"
#alias BgsceneryPainted "gsettings set org.gnome.desktop.background picture-uri file:////usr/share/backgrounds/sceneryPainted.jpeg"
#alias Bgweirdface "gsettings set org.gnome.desktop.background picture-uri file:////usr/share/backgrounds/weirdfacebgred.jpg"
#alias Bgxianxiahug "gsettings set org.gnome.desktop.background picture-uri file:////usr/share/backgrounds/xianxiahug.jpg"
#alias Bgshiro "gsettings set org.gnome.desktop.background picture-uri file:////usr/share/backgrounds/shiro.jpeg"
#alias bgcherryblossom "gsettings set org.gnome.desktop.background picture-uri file:////usr/share/backgrounds/cherryblossom.jpg"
alias lbgmononoke "pkill -f mpv ; sleep 0.5 ; xwinwrap -g 1920x10800 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/mononoke.mp4" 
alias lbgramenShiba "pkill -f mpv ; sleep 0.5 ; xwinwrap -g 1920x10800 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/ramenShiba.mp4" 
alias lbgSleepingTeddyBear "pkill -f mpv ; sleep 0.5 ; xwinwrap -g 1920x10800 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/sleepingTeddyBear.mp4" 
alias lbgLonelyTree "pkill -f mpv ; sleep 0.5 ; xwinwrap -g 1920x10800 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/LonelyTree.mp4" 
alias lbgLake "pkill -f mpv ; sleep 0.5 ; xwinwrap -g 1920x10800 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/LakeSakura.mp4" 
alias lbgRing "pkill -f mpv ; sleep 0.5 ; xwinwrap -g 1920x10800 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/bluering.mp4" 
alias lbgSakura "pkill -f mpv ; sleep 0.5 ; xwinwrap -g 1920x10800 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/sakura2.mp4" 
alias lbgSunset "pkill -f mpv ; sleep 0.5 ; xwinwrap -g 1920x10800 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/sunset.mp4" 
alias lbgSpace "pkill -f mpv ; sleep 0.5 ; xwinwrap -g 1920x10800 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/space.mp4" 
alias lbgFireInSpace "pkill -f mpv ; sleep 0.5 ; xwinwrap -g 1920x10800 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/fireInSpace.mp4" 
alias lbgsword "pkill -f mpv ; sleep 0.5 ; xwinwrap -g 1920x10800 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/sword.mp4" 
alias lbgLuffy "pkill -f mpv ; sleep 0.5 ; xwinwrap -g 1920x10800 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/luffy.mp4" 
alias lbgbluekeys "pkill -f mpv ; sleep 0.5 ; xwinwrap -g 1920x10800 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/blueKeyLight.mp4"
alias lbgcatbeam "pkill -f mpv ; sleep 0.5 ; xwinwrap -g 1920x10800 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/catBeam.mp4"
alias Bgcherryblossom "pkill -f mpv ; sleep 0.5; feh --bg-scale ~/Pictures/backgrounds/cherryblossom.jpg"
alias Bgblack "pkill -f mpv ; sleep 0.5; feh --bg-scale ~/Pictures/backgrounds/black.jpg"
alias Bganimegirl "pkill -f mpv ; sleep 0.5; feh --bg-scale ~/Pictures/backgrounds/animegirl.jpg"
alias Bgforestpath "pkill -f mpv ; sleep 0.5; feh --bg-scale ~/Pictures/backgrounds/forestpath.jpg"
alias Bgfantazypanorama "pkill -f mpv ; sleep 0.5; feh --bg-scale ~/Pictures/backgrounds/black.jpg"
alias BgjapPainting "pkill -f mpv ; sleep 0.5; feh --bg-scale ~/Pictures/backgrounds/japPainting.jpg"
alias Bgprettyface "pkill -f mpv ; sleep 0.5; feh --bg-scale ~/Pictures/backgrounds/prettyface.jpg"
alias Bgsakuradark "pkill -f mpv ; sleep 0.5; feh --bg-scale ~/Pictures/backgrounds/sakuradark.jpg"
alias BgsceneryPainted "pkill -f mpv ; sleep 0.5; feh --bg-scale ~/Pictures/backgrounds/sceneryPainted.jpg"
alias Bgweirdface "pkill -f mpv ; sleep 0.5; feh --bg-scale ~/Pictures/backgrounds/weirdfacebgred.jpg"
alias Bgxianxiahug "pkill -f mpv ; sleep 0.5; feh --bg-scale ~/Pictures/backgrounds/xianxiahug.jpg"
alias Bgcatmeme "pkill -f mpv ; sleep 0.5; feh --bg-scale ~/Pictures/backgrounds/catMeme.jpg"
alias Bgoldwolverine "pkill -f mpv ; sleep 0.5; feh --bg-scale ~/Pictures/backgrounds/oldWolverine.jpg"
alias Bgpanda "pkill -f mpv ; sleep 0.5; feh --bg-scale ~/Pictures/backgrounds/panda.jpg"
alias BgcatForest "pkill -f mpv ; sleep 0.5; feh --bg-scale ~/Pictures/backgrounds/catForest.jpg"

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/jules/.ghcup/bin $PATH # ghcup-env
