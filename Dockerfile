FROM jupyter/scipy-notebook:latest

# Provide some launchbot-specific labels
LABEL name.launchbot.io="🌪 introduction to 🐍"
LABEL workdir.launchbot.io="/usr/workdir"
LABEL description.launchbot.io="A whirlwind introduction to Python."
LABEL 8888.port.launchbot.io="Begin Tutorial"

# Set the working directory
WORKDIR /usr/workdir

# Expose the notebook port
EXPOSE 8888

# Start the notebook server
CMD jupyter notebook --no-browser --port 8888 --ip=*
