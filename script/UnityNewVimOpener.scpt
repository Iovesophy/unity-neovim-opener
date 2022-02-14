on run argv
	if argv = {} then
		return "no exists args..."
	else
		set path to POSIX path of (item 1 of argv)
	end if
	set cmd to "nvim " & fmt(path)
	tell application "Terminal"
		activate
		tell window 1
			do script cmd
		end tell
	end tell
end run
on fmt(pathText)
	set od to AppleScript's text item delimiters
	set AppleScript's text item delimiters to " "
	set pathText to every text item of pathText
	set AppleScript's text item delimiters to "\\ "
	set pathText to pathText as string
	set AppleScript's text item delimiters to od
	return pathText
end fmt
