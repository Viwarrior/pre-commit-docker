# tmp/ maneuver to safeguard against overwriting while mounting
cd /usr/local/app 
# install pre-commit based on pre-commit-config.yaml file in your base dir
pre-commit install --overwrite
# run the pre-commit hook!
.git/hooks/pre-commit
