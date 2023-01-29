#!\bin\sh

# use: bash removeSmalls.sh minLenght outputfolder


MINLGT=$1;
OUTDIR=$2;

mkdir $OUTDIR;

for file in `ls *.fasta | sed 's/.fasta//'`; do

	echo $file;
	echo "removing scaffolds with less than $MINLGT bp";
	perl removesmalls.pl $MINLGT ${file}.fasta > ${file}_lgtfilt.fasta;
	mv ${file}_lgtfilt.fasta $OUTDIR/;
done 
