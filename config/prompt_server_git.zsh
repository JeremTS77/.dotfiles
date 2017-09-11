function precmd()
{
	my_prompt
}
function my_prompt()
{
	PROMPT=$PS1
	if [[ -n $(___Check_Git_Branch) ]]; then
			RPROMPT=" [$(___Check_Git_Branch)]"
	else
		RPROMPT=""
	fi
}

function ___Check_Git_Branch()
{
	if gittest=`git status --ignore-submodules` &> /dev/null; then
		branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
		echo $branch
	fi
}

function ___Check_Git_Status()
{
	if gittest=`git status --ignore-submodules` &> /dev/null; then
		testgit=`echo "nothing to commit"`
		if [[ "$gittest" == *$testgit* ]]; then

		else
			echo "0"
		fi
	fi
}
