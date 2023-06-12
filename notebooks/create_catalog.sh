#! /bin/bash

Exps=(DTC BAMH BAMH0)
Regs=(gl hn tr hs as)
Stats=(RMSE MEAN VIES)

burl="http://ftp1.cptec.inpe.br/pesquisa/das/carlos.bastarz/SCANTEC-2.1.0/old/dataout/"
#burl="https://s0.cptec.inpe.br/pesquisa/das/dist/carlos.bastarz/SCANTEC-2.1.0/old/dataout"

datei=2023021600
datef=2023030300

#driver=csv
driver=intake_xarray.xzarr.ZarrSource

if [ ${driver} == "csv" ]
then
  ndriver="csv"
else
  ndriver="zarr"
fi

for exp in ${Exps[@]}
do
  for reg in ${Regs[@]}
  do
    for stat in ${Stats[@]}
    do        

      if [ ${stat} == "RMSE" ]; then nstat="Root Mean Square Error"; fi
      if [ ${stat} == "MEAN" ]; then nstat="Mean Error"; fi
      if [ ${stat} == "VIES" ]; then nstat="Bias"; fi

cat << EOF2>> catalog-${ndriver}.yml

  scantec_${reg,,}_${stat,,}_${exp,,}:
    args:
      consolidated: true
      urlpath: ${burl}/${reg}/${stat}${exp}_${dates}${datei}${datef}F.${ndriver}
    description: ${nstat} for the ${exp} experiment (${reg} area)
    driver: ${driver}
    metadata:
      catalog_dir: ${burl}
      tags:
        - atmosphere
        - scantec
        - bam
        - data_assimilation
      url: ${burl}

EOF2

      done
    done
  done

sed -i '1 i\sources:' catalog-${ndriver}.yml

exit 0

