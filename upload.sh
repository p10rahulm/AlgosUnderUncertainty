:: Type the command "cmd < upload.sh"
:: Preliminary Checks:
:: 1. Ensure that you are on the IISc CISCO VPN
:: 2. Ensure that the remote ssh credentials are added to github repo


:: Now Git changes
git add -A
git commit -m "content changes"
git push origin main


:: Now attempt to directly update website through SSH
plink alguncertainuser@csacloud.iisc.ac.in -P 3232 -pw alguncertainuser@123
./sync.sh
echo "Please check that the website https://www.csa.iisc.ac.in/~barman/AlgUncertain/ is updated"
exit
