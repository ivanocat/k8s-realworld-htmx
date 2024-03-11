#An image with bun
FROM oven/bun:latest
#setting up a custom working folder
WORKDIR /home/bun/app
#Copy the project in the bun app folder
COPY ./realworld-htmx /home/bun/app
#Install Bun
RUN bun install
#Expose the port
EXPOSE 3000
#Start the application
CMD ["bun", "start"]
