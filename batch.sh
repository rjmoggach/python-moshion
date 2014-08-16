
NET_PRE=/psyop/pfs/projects/zachgoldheals_7076M/sequences
LOC_PRE=/Volumes/ZachGoldMMLA01/zachgoldheals_7076M/sequences
COL_REN=steps/color/_renders/nuke
CMP_REN=steps/composite/_renders/nuke
SEQ_REN=publish/image

# ${SEQ_PRE}/${SHOT}/${COLOR_RENDERS}



SEQ_PRE=spike/shots
## --------------------------------------------------------------------
SHOT=spk0010
ELM_DIR=spk0010_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=spk0010_plt01Grd_v004.%04d.jpg
START=953
END=1065
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}




# -----------------
SHOT=spk0020
ELM_DIR=spk0020_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=spk0020_plt01Grd_v004.%04d.jpg
START=953
END=1073
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}




# -----------------
SHOT=spk0030
ELM_DIR=spk0030_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=spk0030_plt01Grd_v004.%04d.jpg
START=953
END=1094
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0030_grade_v004
ELM_SUBDIR=plt02Grd/jpeg
ELM_NAME=spk0030_plt02Grd_v004.%04d.jpg
START=953
END=1125
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0030_grade_v004
ELM_SUBDIR=plt03Grd/jpeg
ELM_NAME=spk0030_plt03Grd_v004.%04d.jpg
START=953
END=1125
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0030_grade_v004
ELM_SUBDIR=plt04Grd/jpeg
ELM_NAME=spk0030_plt04Grd_v004.%04d.jpg
START=953
END=1085
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0030_grade_v004
ELM_SUBDIR=plt05Grd/jpeg
ELM_NAME=spk0030_plt05Grd_v004.%04d.jpg
START=953
END=1125
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0030_grade_v004
ELM_SUBDIR=plt06Grd/jpeg
ELM_NAME=spk0030_plt06Grd_v004.%04d.jpg
START=953
END=1125
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0030_grade_v004
ELM_SUBDIR=plt07Grd/jpeg
ELM_NAME=spk0030_plt07Grd_v004.%04d.jpg
START=953
END=1071
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0030_grade_v004
ELM_SUBDIR=plt08Grd/jpeg
ELM_NAME=spk0030_plt08Grd_v004.%04d.jpg
START=953
END=1102
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0030_grade_v004
ELM_SUBDIR=plt09Grd/jpeg
ELM_NAME=spk0030_plt09Grd_v004.%04d.jpg
START=953
END=1125
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0030_grade_v004
ELM_SUBDIR=plt10Grd/jpeg
ELM_NAME=spk0030_plt10Grd_v004.%04d.jpg
START=953
END=1105
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0030_grade_v004
ELM_SUBDIR=plt11Grd/jpeg
ELM_NAME=spk0030_plt11Grd_v004.%04d.jpg
START=953
END=1068
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0030_grade_v004
ELM_SUBDIR=plt12Grd/jpeg
ELM_NAME=spk0030_plt12Grd_v004.%04d.jpg
START=953
END=1125
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}




# -----------------
SHOT=spk0040
ELM_DIR=spk0040_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=spk0040_plt01Grd_v004.%04d.jpg
START=953
END=1112
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0040_grade_v004
ELM_SUBDIR=plt02Grd/jpeg
ELM_NAME=spk0040_plt02Grd_v004.%04d.jpg
START=953
END=1065
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0040_grade_v004
ELM_SUBDIR=plt03Grd/jpeg
ELM_NAME=spk0040_plt03Grd_v004.%04d.jpg
START=953
END=1112
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0040_grade_v004
ELM_SUBDIR=plt04Grd/jpeg
ELM_NAME=spk0040_plt04Grd_v004.%04d.jpg
START=953
END=1351
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0040_grade_v004
ELM_SUBDIR=plt05Grd/jpeg
ELM_NAME=spk0040_plt05Grd_v004.%04d.jpg
START=953
END=1091
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0040_grade_v004
ELM_SUBDIR=plt06Grd/jpeg
ELM_NAME=spk0040_plt06Grd_v004.%04d.jpg
START=953
END=1112
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0040_grade_v004
ELM_SUBDIR=plt07Grd/jpeg
ELM_NAME=spk0040_plt07Grd_v004.%04d.jpg
START=953
END=1079
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0040_grade_v004
ELM_SUBDIR=plt08Grd/jpeg
ELM_NAME=spk0040_plt08Grd_v004.%04d.jpg
START=953
END=1079
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0040_grade_v004
ELM_SUBDIR=plt09Grd/jpeg
ELM_NAME=spk0040_plt09Grd_v004.%04d.jpg
START=953
END=1175
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0040_grade_v004
ELM_SUBDIR=plt10Grd/jpeg
ELM_NAME=spk0040_plt10Grd_v004.%04d.jpg
START=953
END=1157
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0040_grade_v004
ELM_SUBDIR=plt11Grd/jpeg
ELM_NAME=spk0040_plt11Grd_v004.%04d.jpg
START=953
END=1090
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0040_grade_v004
ELM_SUBDIR=plt12Grd/jpeg
ELM_NAME=spk0040_plt12Grd_v004.%04d.jpg
START=953
END=1112
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0040_grade_v004
ELM_SUBDIR=plt13Grd/jpeg
ELM_NAME=spk0040_plt13Grd_v004.%04d.jpg
START=953
END=1074
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0040_grade_v004
ELM_SUBDIR=plt14Grd/jpeg
ELM_NAME=spk0040_plt14Grd_v004.%04d.jpg
START=953
END=1074
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0040_grade_v004
ELM_SUBDIR=plt15Grd/jpeg
ELM_NAME=spk0040_plt15Grd_v004.%04d.jpg
START=953
END=1175
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0040_grade_v004
ELM_SUBDIR=plt16Grd/jpeg
ELM_NAME=spk0040_plt16Grd_v004.%04d.jpg
START=953
END=1109
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0040_grade_v004
ELM_SUBDIR=plt17Grd/jpeg
ELM_NAME=spk0040_plt17Grd_v004.%04d.jpg
START=953
END=1082
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0040_grade_v004
ELM_SUBDIR=plt18Grd/jpeg
ELM_NAME=spk0040_plt18Grd_v004.%04d.jpg
START=953
END=1130
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0040_grade_v004
ELM_SUBDIR=plt19Grd/jpeg
ELM_NAME=spk0040_plt19Grd_v004.%04d.jpg
START=953
END=1054
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0040_grade_v004
ELM_SUBDIR=plt20Grd/jpeg
ELM_NAME=spk0040_plt20Grd_v004.%04d.jpg
START=953
END=1112
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0040_grade_v004
ELM_SUBDIR=plt21Grd/jpeg
ELM_NAME=spk0040_plt21Grd_v004.%04d.jpg
START=953
END=1048
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0040_grade_v004
ELM_SUBDIR=plt22Grd/jpeg
ELM_NAME=spk0040_plt22Grd_v004.%04d.jpg
START=953
END=1175
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0040_grade_v004
ELM_SUBDIR=plt23Grd/jpeg
ELM_NAME=spk0040_plt23Grd_v004.%04d.jpg
START=953
END=1362
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0040_grade_v004
ELM_SUBDIR=plt24Grd/jpeg
ELM_NAME=spk0040_plt24Grd_v004.%04d.jpg
START=953
END=1062
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0040_grade_v004
ELM_SUBDIR=plt25Grd/jpeg
ELM_NAME=spk0040_plt25Grd_v004.%04d.jpg
START=953
END=1094
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0040_grade_v004
ELM_SUBDIR=plt26Grd/jpeg
ELM_NAME=spk0040_plt26Grd_v004.%04d.jpg
START=953
END=1070
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0040_grade_v004
ELM_SUBDIR=plt27Grd/jpeg
ELM_NAME=spk0040_plt27Grd_v004.%04d.jpg
START=953
END=1112
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}




# -----------------
SHOT=spk0050
ELM_DIR=spk0050_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=spk0050_plt01Grd_v004.%04d.jpg
START=953
END=1084
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}




# -----------------
SHOT=spk0060
ELM_DIR=spk0060_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=spk0060_plt01Grd_v004.%04d.jpg
START=953
END=1080
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}




# -----------------
SHOT=spk0070
ELM_DIR=spk0070_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=spk0070_plt01Grd_v004.%04d.jpg
START=953
END=1075
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0070_grade_v004
ELM_SUBDIR=plt02Grd/jpeg
ELM_NAME=spk0070_plt02Grd_v004.%04d.jpg
START=953
END=1075
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=spk0080
ELM_DIR=spk0080_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=spk0080_plt01Grd_v004.%04d.jpg
START=953
END=1064
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0080_grade_v004
ELM_SUBDIR=plt02Grd/jpeg
ELM_NAME=spk0080_plt02Grd_v004.%04d.jpg
START=953
END=1064
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=spk0090
ELM_DIR=spk0090_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=spk0090_plt01Grd_v004.%04d.jpg
START=953
END=1054
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0090_grade_v004
ELM_SUBDIR=plt02Grd/jpeg
ELM_NAME=spk0090_plt02Grd_v004.%04d.jpg
START=953
END=1054
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=spk0100
ELM_DIR=spk0100_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=spk0100_plt01Grd_v004.%04d.jpg
START=953
END=1070
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0100_grade_v004
ELM_SUBDIR=plt02Grd/jpeg
ELM_NAME=spk0100_plt02Grd_v004.%04d.jpg
START=953
END=1070
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=spk0110
ELM_DIR=spk0110_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=spk0110_plt01Grd_v004.%04d.jpg
START=953
END=1069
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=spk0120
ELM_DIR=spk0120_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=spk0120_plt01Grd_v004.%04d.jpg
START=953
END=1237
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=spk0130
ELM_DIR=spk0130_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=spk0130_plt01Grd_v004.%04d.jpg
START=953
END=1007
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0130_grade_v004
ELM_SUBDIR=plt02Grd/jpeg
ELM_NAME=spk0130_plt02Grd_v004.%04d.jpg
START=953
END=1020
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0130_grade_v004
ELM_SUBDIR=plt03Grd/jpeg
ELM_NAME=spk0130_plt03Grd_v004.%04d.jpg
START=953
END=1073
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0130_grade_v004
ELM_SUBDIR=plt04Grd/jpeg
ELM_NAME=spk0130_plt04Grd_v004.%04d.jpg
START=953
END=1082
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0130_grade_v004
ELM_SUBDIR=plt05Grd/jpeg
ELM_NAME=spk0130_plt05Grd_v004.%04d.jpg
START=953
END=1137
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0130_grade_v004
ELM_SUBDIR=plt06Grd/jpeg
ELM_NAME=spk0130_plt06Grd_v004.%04d.jpg
START=953
END=1124
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0130_grade_v004
ELM_SUBDIR=plt07Grd/jpeg
ELM_NAME=spk0130_plt07Grd_v004.%04d.jpg
START=953
END=1077
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0130_grade_v004
ELM_SUBDIR=plt08Grd/jpeg
ELM_NAME=spk0130_plt08Grd_v004.%04d.jpg
START=953
END=1194
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0130_grade_v004
ELM_SUBDIR=plt09Grd/jpeg
ELM_NAME=spk0130_plt09Grd_v004.%04d.jpg
START=953
END=1069
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0130_grade_v004
ELM_SUBDIR=plt10Grd/jpeg
ELM_NAME=spk0130_plt10Grd_v004.%04d.jpg
START=953
END=1118
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0130_grade_v004
ELM_SUBDIR=plt11Grd/jpeg
ELM_NAME=spk0130_plt11Grd_v004.%04d.jpg
START=953
END=1158
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0130_grade_v004
ELM_SUBDIR=plt12Grd/jpeg
ELM_NAME=spk0130_plt12Grd_v004.%04d.jpg
START=953
END=1249
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0130_grade_v004
ELM_SUBDIR=plt13Grd/jpeg
ELM_NAME=spk0130_plt13Grd_v004.%04d.jpg
START=953
END=1208
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0130_grade_v004
ELM_SUBDIR=plt14Grd/jpeg
ELM_NAME=spk0130_plt14Grd_v004.%04d.jpg
START=953
END=1087
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0130_grade_v004
ELM_SUBDIR=plt15Grd/jpeg
ELM_NAME=spk0130_plt15Grd_v004.%04d.jpg
START=953
END=1284
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0130_grade_v004
ELM_SUBDIR=plt16Grd/jpeg
ELM_NAME=spk0130_plt16Grd_v004.%04d.jpg
START=953
END=1214
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=spk0130_grade_v005
ELM_SUBDIR=plt17Grd/jpeg
ELM_NAME=spk0130_plt17Grd_v005.%04d.jpg
START=1001
END=1414
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}




SEQ_PRE=lips/shots
## --------------------------------------------------------------------
SHOT=lip0010
ELM_DIR=lip0010_grade_v003
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=lip0010_plt01Grd_v03.%04d.jpg
START=953
END=1107
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=lip0020
ELM_DIR=lip0020_grade_v003
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=lip0020_plt01Grd_v03.%04d.jpg
START=953
END=1078
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=lip0030
ELM_DIR=lip0030_grade_v003
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=lip0030_plt01Grd_v03.%04d.jpg
START=953
END=1081
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=lip0040
ELM_DIR=lip0040_grade_v003
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=lip0040_plt01Grd_v03.%04d.jpg
START=953
END=1093
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=lip0050
ELM_DIR=lip0050_grade_v003
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=lip0050_plt01Grd_v03.%04d.jpg
START=953
END=1072
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=lip0060
ELM_DIR=lip0060_grade_v003
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=lip0060_plt01Grd_v03.%04d.jpg
START=953
END=1134
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=lip0060_grade_v003
ELM_SUBDIR=plt02Grd/jpeg
ELM_NAME=lip0060_plt02Grd_v03.%04d.jpg
START=953
END=1134
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}




# -----------------
SHOT=lip0070
ELM_DIR=lip0070_grade_v003
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=lip0070_plt01Grd_v03.%04d.jpg
START=953
END=1087
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}





SEQ_PRE=danceFight/shots
## --------------------------------------------------------------------
SHOT=dft0010
ELM_DIR=dft0010_grade_v002
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=dft0010_plt01Grd_v002.%04d.jpg
START=953
END=1170
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=dft0020
ELM_DIR=dft0020_grade_v002
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=dft0020_plt01Grd_v002.%04d.jpg
START=953
END=1063
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=dft0030
ELM_DIR=dft0030_grade_v002
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=dft0030_plt01Grd_v002.%04d.jpg
START=953
END=1068
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=dft0040
ELM_DIR=dft0040_grade_v002
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=dft0040_plt01Grd_v002.%04d.jpg
START=953
END=1079
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=dft0050
ELM_DIR=dft0050_grade_v002
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=dft0050_plt01Grd_v002.%04d.jpg
START=953
END=1076
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=dft0060
ELM_DIR=dft0060_grade_v002
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=dft0060_plt01Grd_v002.%04d.jpg
START=953
END=1081
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=dft0070
ELM_DIR=dft0070_grade_v002
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=dft0070_plt01Grd_v002.%04d.jpg
START=953
END=1075
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=dft0080
ELM_DIR=dft0080_grade_v002
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=dft0080_plt01Grd_v002.%04d.jpg
START=953
END=1122
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=dft0090
ELM_DIR=dft0090_grade_v002
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=dft0090_plt01Grd_v002.%04d.jpg
START=953
END=1066
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=dft0100
ELM_DIR=dft0100_grade_v002
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=dft0100_plt01Grd_v002.%04d.jpg
START=953
END=1097
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=dft0110
ELM_DIR=dft0110_grade_v002
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=dft0110_plt01Grd_v002.%04d.jpg
START=953
END=1062
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=dft0120
ELM_DIR=dft0120_grade_v002
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=dft0120_plt01Grd_v002.%04d.jpg
START=953
END=1064
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=dft0120_grade_v002
ELM_SUBDIR=plt02Grd/jpeg
ELM_NAME=dft0120_plt02Grd_v002.%04d.jpg
START=953
END=1064
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=dft0130
ELM_DIR=dft0130_grade_v002
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=dft0130_plt01Grd_v002.%04d.jpg
START=953
END=1066
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=dft0140
ELM_DIR=dft0140_grade_v002
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=dft0140_plt01Grd_v002.%04d.jpg
START=953
END=1064
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=dft0150
ELM_DIR=dft0150_grade_v002
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=dft0150_plt01Grd_v002.%04d.jpg
START=953
END=1097
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=dft0160
ELM_DIR=dft0160_grade_v002
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=dft0160_plt01Grd_v002.%04d.jpg
START=953
END=1065
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=dft0170
ELM_DIR=dft0170_grade_v002
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=dft0170_plt01Grd_v002.%04d.jpg
START=953
END=1117
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=dft0180
ELM_DIR=dft0180_grade_v002
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=dft0180_plt01Grd_v002.%04d.jpg
START=953
END=1089
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=dft0190
ELM_DIR=dft0190_grade_v002
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=dft0190_plt01Grd_v002.%04d.jpg
START=953
END=1081
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=dft0200
ELM_DIR=dft0200_grade_v002
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=dft0200_plt01Grd_v002.%04d.jpg
START=953
END=1071
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=dft0210
ELM_DIR=dft0210_grade_v002
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=dft0210_plt01Grd_v002.%04d.jpg
START=953
END=1032
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=dft0220
ELM_DIR=dft0220_grade_v002
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=dft0220_plt01Grd_v002.%04d.jpg
START=953
END=1072
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=dft0230
ELM_DIR=dft0230_grade_v002
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=dft0230_plt01Grd_v002.%04d.jpg
START=953
END=1490
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=dft0230_grade_v002
ELM_SUBDIR=plt02Grd/jpeg
ELM_NAME=dft0230_plt02Grd_v002.%04d.jpg
START=953
END=1126
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}




SEQ_PRE=underWater/shots
## --------------------------------------------------------------------
SHOT=wtr0010
ELM_DIR=wtr0010_grade_v001
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=wtr0010_plt01Grd_v001.%04d.jpg
START=953
END=1843
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=wtr0020
ELM_DIR=wtr0020_grade_v001
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=wtr0020_plt01Grd_v001.%04d.jpg
START=953
END=1364
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=wtr0020
ELM_DIR=wtr0020_grade_v001
ELM_SUBDIR=plt02Grd/jpeg
ELM_NAME=wtr0020_plt02Grd_v001.%04d.jpg
START=953
END=1141
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=wtr0020_grade_v001
ELM_SUBDIR=plt03Grd/jpeg
ELM_NAME=wtr0020_plt03Grd_v001.%04d.jpg
START=953
END=1141
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=wtr0020_grade_v001
ELM_SUBDIR=plt04Grd/jpeg
ELM_NAME=wtr0020_plt04Grd_v001.%04d.jpg
START=953
END=1141
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=wtr0020_grade_v001
ELM_SUBDIR=plt05Grd/jpeg
ELM_NAME=wtr0020_plt05Grd_v001.%04d.jpg
START=953
END=1141
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=wtr0030
ELM_DIR=wtr0030_grade_v001
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=wtr0030_plt01Grd_v001.%04d.jpg
START=953
END=1217
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=wtr0040
ELM_DIR=wtr0040_grade_v001
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=wtr0040_plt01Grd_v001.%04d.jpg
START=953
END=1146
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=wtr0050
ELM_DIR=wtr0050_grade_v001
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=wtr0050_plt01Grd_v001.%04d.jpg
START=953
END=1078
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=wtr0050_grade_v001
ELM_SUBDIR=plt02Grd/jpeg
ELM_NAME=wtr0050_plt02Grd_v001.%04d.jpg
START=953
END=1117
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}




SEQ_PRE=funeral/shots
## --------------------------------------------------------------------
SHOT=fun0010
ELM_DIR=fun0010_grade_v001
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=fun0010_plt01Grd_v001.%04d.jpg
START=953
END=1135
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=fun0020
ELM_DIR=fun0020_grade_v001
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=fun0020_plt01Grd_v001.%04d.jpg
START=953
END=1108
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=fun0030
ELM_DIR=fun0030_grade_v001
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=fun0030_plt01Grd_v001.%04d.jpg
START=953
END=1075
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=fun0040
ELM_DIR=fun0040_grade_v001
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=fun0040_plt01Grd_v001.%04d.jpg
START=953
END=1093
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=fun0050
ELM_DIR=fun0050_grade_v001
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=fun0050_plt01Grd_v001.%04d.jpg
START=953
END=1057
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=fun0060
ELM_DIR=fun0060_grade_v001
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=fun0060_plt01Grd_v001.%04d.jpg
START=953
END=1059
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=fun0070
ELM_DIR=fun0070_grade_v001
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=fun0070_plt01Grd_v001.%04d.jpg
START=953
END=1052
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=fun0070_grade_v001
ELM_SUBDIR=plt02Grd/jpeg
ELM_NAME=fun0070_plt02Grd_v001.%04d.jpg
START=953
END=1052
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=fun0080
ELM_DIR=fun0080_grade_v001
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=fun0080_plt01Grd_v001.%04d.jpg
START=953
END=1059
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=fun0090
ELM_DIR=fun0090_grade_v001
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=fun0090_plt01Grd_v001.%04d.jpg
START=953
END=1076
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=fun0100
ELM_DIR=fun0100_grade_v001
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=fun0100_plt01Grd_v001.%04d.jpg
START=953
END=1102
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=fun0110
ELM_DIR=fun0110_grade_v001
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=fun0110_plt01Grd_v001.%04d.jpg
START=953
END=1117
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=fun0120
ELM_DIR=fun0120_grade_v001
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=fun0120_plt01Grd_v001.%04d.jpg
START=953
END=1130
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=fun0130
ELM_DIR=fun0130_grade_v001
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=fun0130_plt01Grd_v001.%04d.jpg
START=953
END=1085
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=fun0140
ELM_DIR=fun0140_grade_v001
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=fun0140_plt01Grd_v001.%04d.jpg
START=953
END=1108
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=fun0150
ELM_DIR=fun0150_grade_v001
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=fun0150_plt01Grd_v001.%04d.jpg
START=953
END=1211
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=fun0150_grade_v001
ELM_SUBDIR=plt02Grd/jpeg
ELM_NAME=fun0150_plt02Grd_v001.%04d.jpg
START=953
END=1120
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=fun0150_grade_v001
ELM_SUBDIR=plt03Grd/jpeg
ELM_NAME=fun0150_plt03Grd_v001.%04d.jpg
START=953
END=1211
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=fun0160
ELM_DIR=fun0160_grade_v001
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=fun0160_plt01Grd_v001.%04d.jpg
START=953
END=1172
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}




SEQ_PRE=heel/shots
## --------------------------------------------------------------------
SHOT=hee0010
ELM_DIR=hee0010_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0010_plt01Grd_v004.%04d.jpg
START=953
END=1736
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0020
ELM_DIR=hee0020_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0020_plt01Grd_v004.%04d.jpg
START=953
END=1106
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0030
ELM_DIR=hee0030_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0030_plt01Grd_v004.%04d.jpg
START=953
END=1119
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0040
ELM_DIR=hee0040_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0040_plt01Grd_v004.%04d.jpg
START=953
END=1095
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0050
ELM_DIR=hee0050_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0050_plt01Grd_v004.%04d.jpg
START=953
END=1085
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0060
ELM_DIR=hee0060_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0060_plt01Grd_v004.%04d.jpg
START=953
END=1180
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0070
ELM_DIR=hee0070_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0070_plt01Grd_v004.%04d.jpg
START=953
END=1097
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0080
ELM_DIR=hee0080_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0080_plt01Grd_v004.%04d.jpg
START=953
END=1090
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0090
ELM_DIR=hee0090_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0090_plt01Grd_v004.%04d.jpg
START=953
END=1095
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0100
ELM_DIR=hee0100_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0100_plt01Grd_v004.%04d.jpg
START=953
END=1110
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0110
ELM_DIR=hee0110_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0110_plt01Grd_v004.%04d.jpg
START=953
END=1073
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0120
ELM_DIR=hee0120_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0120_plt01Grd_v004.%04d.jpg
START=953
END=1123
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=hee0120_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0120_plt02Grd_v004.%04d.jpg
START=953
END=1126
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=hee0120_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0120_plt03Grd_v004.%04d.jpg
START=953
END=1134
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=hee0120_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0120_plt04Grd_v004.%04d.jpg
START=953
END=1138
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=hee0120_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0120_plt05Grd_v004.%04d.jpg
START=953
END=1118
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=hee0120_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0120_plt06Grd_v004.%04d.jpg
START=953
END=1268
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=hee0120_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0120_plt07Grd_v004.%04d.jpg
START=953
END=1154
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0130
ELM_DIR=hee0130_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0130_plt01Grd_v004.%04d.jpg
START=953
END=1102
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=hee0130_grade_v004
ELM_SUBDIR=plt02Grd/jpeg
ELM_NAME=hee0130_plt02Grd_v004.%04d.jpg
START=953
END=1102
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0140
ELM_DIR=hee0140_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0140_plt01Grd_v004.%04d.jpg
START=953
END=1123
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0150
ELM_DIR=hee0150_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0150_plt01Grd_v004.%04d.jpg
START=953
END=1298
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0160
ELM_DIR=hee0160_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0160_plt01Grd_v004.%04d.jpg
START=953
END=1139
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0170
ELM_DIR=hee0170_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0170_plt01Grd_v004.%04d.jpg
START=953
END=1207
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0180
ELM_DIR=hee0180_grade_v005
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0180_plt01Grd_v005.%04d.jpg
START=953
END=1101
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0190
ELM_DIR=hee0190_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0190_plt01Grd_v004.%04d.jpg
START=953
END=1083
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=hee0190_grade_v004
ELM_SUBDIR=plt02Grd/jpeg
ELM_NAME=hee0190_plt02Grd_v004.%04d.jpg
START=953
END=1100
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0200
ELM_DIR=hee0200_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0200_plt01Grd_v004.%04d.jpg
START=953
END=1099
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0210
ELM_DIR=hee0210_grade_v005
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0210_plt01Grd_v005.%04d.jpg
START=953
END=1218
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0220
ELM_DIR=hee0220_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0220_plt01Grd_v004.%04d.jpg
START=953
END=1085
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0230
ELM_DIR=hee0230_grade_v005
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0230_plt01Grd_v005.%04d.jpg
START=953
END=1090
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0240
ELM_DIR=hee0240_grade_v005
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0240_plt01Grd_v005.%04d.jpg
START=953
END=1071
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0250
ELM_DIR=hee0250_grade_v005
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0250_plt01Grd_v005.%04d.jpg
START=953
END=1101
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0260
ELM_DIR=hee0260_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0260_plt01Grd_v004.%04d.jpg
START=953
END=1093
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0270
ELM_DIR=hee0270_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0270_plt01Grd_v004.%04d.jpg
START=953
END=1084
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0280
ELM_DIR=hee0280_grade_v005
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0280_plt01Grd_v005.%04d.jpg
START=953
END=1087
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0290
ELM_DIR=hee0290_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0290_plt01Grd_v004.%04d.jpg
START=953
END=1087
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0300
ELM_DIR=hee0300_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0300_plt01Grd_v004.%04d.jpg
START=953
END=1120
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0310
ELM_DIR=hee0310_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0310_plt01Grd_v004.%04d.jpg
START=953
END=1088
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0320
ELM_DIR=hee0320_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0320_plt01Grd_v004.%04d.jpg
START=953
END=1132
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0330
ELM_DIR=hee0330_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0330_plt01Grd_v004.%04d.jpg
START=953
END=1076
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0340
ELM_DIR=hee0340_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0340_plt01Grd_v004.%04d.jpg
START=953
END=1076
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0350
ELM_DIR=hee0350_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0350_plt01Grd_v004.%04d.jpg
START=953
END=1092
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0360
ELM_DIR=hee0360_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0360_plt01Grd_v004.%04d.jpg
START=953
END=1065
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0370
ELM_DIR=hee0370_grade_v005
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0370_plt01Grd_v005.%04d.jpg
START=953
END=1090
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0380
ELM_DIR=hee0380_grade_v005
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0380_plt01Grd_v005.%04d.jpg
START=953
END=1070
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0390
ELM_DIR=hee0390_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0390_plt01Grd_v004.%04d.jpg
START=953
END=1097
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0400
ELM_DIR=hee0400_grade_v004
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0400_plt01Grd_v004.%04d.jpg
START=953
END=1098
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=hee0400_grade_v004
ELM_SUBDIR=plt02Grd/jpeg
ELM_NAME=hee0400_plt02Grd_v004.%04d.jpg
START=953
END=1098
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0410
ELM_DIR=hee0410_grade_v005
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0410_plt01Grd_v005.%04d.jpg
START=953
END=1090
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=hee0420
ELM_DIR=hee0420_grade_v005
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=hee0420_plt01Grd_v005.%04d.jpg
START=953
END=1123
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}




SEQ_PRE=blackDance/shots
## --------------------------------------------------------------------
SHOT=blk0010
ELM_DIR=blk0010_grade_v003
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=blk0010_plt01Grd_v03.%04d.jpg
START=953
END=1055
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=blk0020
ELM_DIR=blk0020_grade_v003
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=blk0020_plt01Grd_v03.%04d.jpg
START=953
END=1081
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=blk0030
ELM_DIR=blk0030_grade_v003
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=blk0030_plt01Grd_v03.%04d.jpg
START=953
END=1159
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=blk0040
ELM_DIR=blk0040_grade_v003
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=blk0040_plt01Grd_v03.%04d.jpg
START=953
END=1171
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=blk0050
ELM_DIR=blk0050_grade_v003
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=blk0050_plt01Grd_v03.%04d.jpg
START=953
END=1171
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=blk0060
ELM_DIR=blk0060_grade_v003
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=blk0060_plt01Grd_v03.%04d.jpg
START=953
END=1118
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=blk0070
ELM_DIR=blk0070_grade_v003
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=blk0070_plt01Grd_v03.%04d.jpg
START=953
END=1121
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=blk0080
ELM_DIR=blk0080_grade_v003
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=blk0080_plt01Grd_v03.%04d.jpg
START=953
END=1233
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=blk0080_grade_v003
ELM_SUBDIR=plt02Grd/jpeg
ELM_NAME=blk0080_plt02Grd_v03.%04d.jpg
START=953
END=1233
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=blk0080_grade_v003
ELM_SUBDIR=plt03Grd/jpeg
ELM_NAME=blk0080_plt03Grd_v03.%04d.jpg
START=953
END=1199
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=blk0080_grade_v003
ELM_SUBDIR=plt04Grd/jpeg
ELM_NAME=blk0080_plt04Grd_v03.%04d.jpg
START=953
END=1208
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=blk0080_grade_v003
ELM_SUBDIR=plt05Grd/jpeg
ELM_NAME=blk0080_plt05Grd_v03.%04d.jpg
START=953
END=1159
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=blk0080_grade_v003
ELM_SUBDIR=plt06Grd/jpeg
ELM_NAME=blk0080_plt06Grd_v03.%04d.jpg
START=953
END=1164
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=blk0080_grade_v003
ELM_SUBDIR=plt07Grd/jpeg
ELM_NAME=blk0080_plt07Grd_v03.%04d.jpg
START=953
END=1213
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=blk0080_grade_v003
ELM_SUBDIR=plt08Grd/jpeg
ELM_NAME=blk0080_plt08Grd_v03.%04d.jpg
START=953
END=1159
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
ELM_DIR=blk0080_grade_v003
ELM_SUBDIR=plt09Grd/jpeg
ELM_NAME=blk0080_plt09Grd_v03.%04d.jpg
START=953
END=1199
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}



# -----------------
SHOT=blk0090
ELM_DIR=blk0090_grade_v003
ELM_SUBDIR=plt01Grd/jpeg
ELM_NAME=blk0090_plt01Grd_v03.%04d.jpg
START=953
END=1146
# mkdir -p -v -m 777 ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}
## mkdir -p -v -m 777 ${NET_PRE}/${SEQ_PRE}/${SHOT}/${CMP_REN}/${ELM_DIR}_moshed
OUT_DIR=${NET_PRE}/${SEQ_PRE/\/shots/}/${SEQ_REN}/mosh_renders/${ELM_DIR}_moshed
IN_SEQ=${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/${ELM_NAME}
### mkdir -p -v -m 777 ${OUT_DIR}
# rsync -av ${NET_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/ ${LOC_PRE}/${SEQ_PRE}/${SHOT}/${COL_REN}/${ELM_DIR}/${ELM_SUBDIR}/
./gomoshion.py --start ${START} --end $(($END-15)) --moshstart $(($START+10)) --inseq ${IN_SEQ} --moshseq ${IN_SEQ} --outdir ${OUTDIR}









