#! /bin/bash

iss generate \
--cpus 20 \
--seed 29032019 \
--genomes genomes_sfmt/*.fasta \
--model error_profile.npz \
--coverage_file coverages_sfmt/exponential_coverage.txt \
--n_reads 20000000 \
--output exponential_sfmt

iss generate \
--cpus 20 \
--seed 29032019 \
--genomes genomes_sfmt/*.fasta \
--model error_profile.npz \
--coverage_file coverages_sfmt/zero_inflated_lognormal_coverage.txt \
--n_reads 20000000 \
--output zero_inflated_lognormal_sfmt

iss generate \
--cpus 20 \
--seed 29032019 \
--genomes genomes_sfmt/*.fasta \
--model error_profile.npz \
--coverage_file coverages_sfmt/uniform_coverage.txt \
--n_reads 20000000 \
--output uniform_sfmt

iss generate \
--cpus 20 \
--seed 29032019 \
--genomes genomes_sfmt/*.fasta \
--model error_profile.npz \
--coverage_file coverages_sfmt/lognormal_coverage.txt \
--n_reads 20000000 \
--output lognormal_sfmt

iss generate \
--cpus 20 \
--seed 29032019 \
--genomes genomes_sfmt/*.fasta \
--model error_profile.npz \
--coverage_file coverages_sfmt/log_step_coverage.txt \
--output log_step_sfmt

iss generate \
--cpus 20 \
--seed 29032019 \
--genomes genomes_sfmt/*.fasta \
--model error_profile.npz \
--coverage_file coverages_sfmt/missing_coverage.txt \
--output missing_sfmt



for i in {1..10}; do
  iss generate \
    --cpus 20 \
    --genomes genomes_sfmt/*.fasta \
    --model error_profile.npz \
    --coverage_file coverages_sfmt/zil_"$i"_coverage.txt \
    --n_reads 20000000 \
    --output zil_"$i"_sfmt
done

