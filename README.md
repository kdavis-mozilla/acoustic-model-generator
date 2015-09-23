# Acoustic Model Generator
Creates acoustic models from the raw voice samples produced by the community portion of [Vaani](https://github.com/mozilla/vaani)

# Quick Start

## Prerequisites

- AWS instance created from the AMI pocketsphinx-acoustic-model-adaptor
- AWS command line interface [cli](https://aws.amazon.com/cli/)

## Execution

### What to do...

One simply opens a shell as the ``ec2-user`` to the AWS instance an proceedes as follows:
```bash
[ec2-user@ip-172-31-45-75 ~]$ cd acoustic-models
[ec2-user@ip-172-31-45-75 ~]$ aws s3 sync s3://acoustic-models .
[ec2-user@ip-172-31-45-75 acoustic-models]$ cd raw/<lang>
[ec2-user@ip-172-31-45-75 acoustic-models]$ git clone https://github.com/kdavis-mozilla/acoustic-model-generator.git
[ec2-user@ip-172-31-45-75 <lang>]$ acoustic-model-generator/adapt-acoustic-model.sh
```
where ``<lang>`` is the language one wishes to generate a new model for

### What happens...

This will run through several steps. It will

* Generate acoustic features
* Convert the model's mdef file to text
* Accumulate observation counts
* Apply mllr transformation to the data
* Update the acoustic model with map_adapt
* Recreate adapted sendump file

### What the results are...

The final result is a acoustic model for ``<lang>`` using the Vaani speech corpus stored in the directory `/home/ec2-user/acoustic-models/raw/<lang>/<lang>-adapt`.
