#! /bin/bash

for original in example1/original.jpg example2/original.jpg example3/original.jpg example4/original.png
do
	for i in {0..63}
	do
		avifenc -j all --min 0 --max 63 --minalpha 0 --maxalpha 63 -a end-usage=q -a cq-level=$i -a tune=ssim $original ${original//\/*/}/q-$i.avif
	done
done
