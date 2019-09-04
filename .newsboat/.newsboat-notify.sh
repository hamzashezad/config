#!/bin/sh
case $(uname) in
	"Darwin")
		terminal-notifier -title "new articles" -message "$1" ;;
	
	"Linux")
		notify-send "new articles" "$1" ;;
esac
