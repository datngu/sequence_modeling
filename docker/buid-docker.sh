## BUILD DOCKER AUTOMATICLY
docker build -t seq-modeling:v0.0.0 -f Dockerfile .

# v0.0.0
docker tag seq-modeling:v0.0.0 ndatth/seq-modeling:v0.0.0
docker push ndatth/seq-modeling:v0.0.0
echo DONE


### test docker

docker run -it -v /delta4:/delta4 --name seq ndatth/seq-modeling:v0.0.0
docker start seq
docker attach seq

## build singularity image
# module load git/2.23.0-GCCcore-9.3.0-nodocs
# module load Nextflow/21.03
module load singularity/rpm

singularity build --fakeroot -F ndatth-seq-modeling-v0.0.0.img docker://ndatth/seq-modeling:v0.0.0
