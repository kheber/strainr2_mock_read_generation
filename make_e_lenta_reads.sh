#! /bin/bash

iss generate \
--cpus 20 \
--seed 29032019 \
--genomes genomes_e_lenta/*.fna \
--model error_profile.npz \
--coverage_file coverages_e_lenta/exponential_coverage.txt \
--n_reads 20000000 \
--output exponential_e_lenta

iss generate \
--cpus 20 \
--seed 29032019 \
--genomes genomes_e_lenta/*.fna \
--model error_profile.npz \
--coverage_file coverages_e_lenta/zero_inflated_lognormal_coverage.txt \
--n_reads 20000000 \
--output zero_inflated_lognormal_e_lenta

iss generate \
--cpus 20 \
--seed 29032019 \
--genomes genomes_e_lenta/*.fna \
--model error_profile.npz \
--coverage_file coverages_e_lenta/uniform_coverage.txt \
--n_reads 20000000 \
--output uniform_e_lenta

iss generate \
--cpus 20 \
--seed 29032019 \
--genomes genomes_e_lenta/*.fna \
--model error_profile.npz \
--coverage_file coverages_e_lenta/lognormal_coverage.txt \
--n_reads 20000000 \
--output lognormal_e_lenta

iss generate \
--cpus 20 \
--seed 29032019 \
--genomes genomes_e_lenta/*.fna \
--model error_profile.npz \
--coverage_file coverages_e_lenta/log_step_coverage.txt \
--output log_step_e_lenta

iss generate \
--cpus 20 \
--seed 29032019 \
--genomes genomes_e_lenta/*.fna \
--model error_profile.npz \
--coverage_file coverages_e_lenta/missing_coverage.txt \
--output missing_e_lenta



for i in {1..10}; do
  iss generate \
    --cpus 20 \
    --genomes genomes_e_lenta/*.fna \
    --model error_profile.npz \
    --coverage_file coverages_e_lenta/zil_"$i"_coverage.txt \
    --n_reads 20000000 \
    --output zil_"$i"_e_lenta
done

