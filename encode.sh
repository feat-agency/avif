#! /bin/bash

for i in {0..63}
do
	avifenc -j all --min 0 --max 63 --minalpha 0 --maxalpha 63 -a end-usage=q -a cq-level=$i -a tune=ssim original.jpg quality-$i.avif
done
