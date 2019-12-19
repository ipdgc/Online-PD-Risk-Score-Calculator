## LK CODE
# Run on Beluga (Linux)

Rscript PRSice.R --target BFILE_NAME --base PD_risk-profile.txt --stat beta --snp MarkerName --A1 Allele1 --score avg --binary-target T --prsice ./PRSice_linux --quantile 4 --prevalence 0.005 --A2 Allele2 --pvalue P-value --out pd-test-avg --fastscore

## KB CODE
## to run this NOT on a pathway but all SNPs use below for a binary trait
Rscript PRSice.R --cov-file PCs.eigenvec_concate.txt --out $outfile -t UNRELATED.SPAIN4.HARDCALLS.updated.ids -b SPAIN3.meta --beta --snp MarkerName --A1 Allele1 --A2 Allele2 --stat Effect --se StdErr --pvalue P-value --ld $binaryfor1k  --print-snp --score std --perm 10000 --prsice /data/LNG/pdMeta5v2/leaveOneOutPrsice/PRSice_linux/PRSice_linux -n 24 --binary-target T --quantile 4 --prevalence 0.005 --bar-levels 5E-8,5E-7,5E-6,5E-5,5E-4,5E-3,5E-2,5E-1,1 --fastscore
