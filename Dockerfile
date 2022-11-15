# Strat from Alphine Linux with Node 16 installed...
FROM node:16-alpine3.15
# Create a working directory and copy all files (except those on .Dockerfile)
WORKDIR /scr/
COPY . .
#install our dependencies
RUN npm install 
# Set environment variables
ENV PORT 3000
#Open up port
EXPOSE 3000
# This is the command to run whenever we start a new container
CMD [ "npm", "start" ]

