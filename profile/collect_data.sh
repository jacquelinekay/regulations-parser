for i in {1..20} 
do
  python ../build_from.py ../fec_docs/1997CFR/CFR-1997-title11-vol1-part110.xml 11 96-20102 5 552 profile > "CFR-1997/$i".txt
done

sed -i '/usr/d' CFR-1997/*
