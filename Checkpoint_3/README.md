# Run
```
snakemake --forceall -c1 --snakefile pipeline.txt
```

# Visualize
```
snakemake --forceall --dag --snakefile pipeline.txt | dot -Tpdf > dag.pdf
```
