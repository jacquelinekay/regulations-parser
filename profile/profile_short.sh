# Download the missing XML file if it doesn't exist
if ! [[ -e "../CFR-2012-title12-vol8-part1004.xml" ]] ; then
  wget -O ../CFR-2012-title12-vol8-part1004.xml http://www.gpo.gov/fdsys/pkg/CFR-2012-title12-vol8/xml/CFR-2012-title12-vol8-part1004.xml
  echo "Downloaded missing XML file from gpo.gov."
fi

python ../build_from.py ../CFR-2012-title12-vol8-part1004.xml 12 2011-18676 15 1693 profile > short_profile_output.txt
sed -i '/usr/d' CFR-1997/*
