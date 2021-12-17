echo "select your fav team"
echo "DC CSK RCB KKR MI PBSK RR SRH"

read teamname
position=0
win=0
loose=0
points=0
nrr=""
matchesplayed=14
function ipl() {
	 
 }

case $teamname in
     dc)
	position=1
	win=10
	loose=4
	nrr="+0.481"
	ipl
      ;;
    csk)
	position=2
	win=9
	loose=5
	nrr="+0.455"
	ipl
      
      ;;
     mi)
	position=5
	win=7
	loose=7
	nrr="+0.116"
	ipl
      
      ;;
   *)
     Default condition to be executed
     ;;
esac