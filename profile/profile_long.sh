# uncomment to download needed xml file
if ! [[ -e "../fec_docs/1997CFR/CFR-1997-title11-vol1-part110.xml" ]] ; then
  #wget -O ../CFR-2012-title12-vol8-part1004.xml http://www.gpo.gov/fdsys/pkg/CFR-2012-title12-vol8/xml/CFR-2012-title12-vol8-part1004.xml
  if ! [[ -d "../fec_docs" ]] ; then
    echo "Cloning missing fec_docs repo, this may take a while...."
    git clone https://github.com/micahsaul/fec_docs ../fec_docs
  fi
fi

python ../build_from.py ../fec_docs/1997CFR/CFR-1997-title11-vol1-part110.xml 11 96-20102 5 552 profile > profile_long.txt
sed -i '/usr/d' CFR-1997/*
