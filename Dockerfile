#From latest RUBY container
FROM ruby:latest

#Create Group
RUN addgroup --gid 1000 ruby_group
#Add User to Group
RUN adduser --disabled-password --gecos '' --uid 1000 --gid 1000 ruby_user

#Create the dir to host the source code
RUN mkdir /usr/src/app
#Copy git clone to the container
COPY ./adjust/ /usr/src/app/

#Expose 80 port
EXPOSE 80
#Chaneg to Workd Dir
WORKDIR /usr/src/app/
# Change dir user
RUN chown -R ruby_user:ruby_group /usr/src/app/
#Switch User
USER ruby_user
#Make bootstrap executable
RUN chmod +x http_server.rb
#Start the server
CMD ["ruby", "http_server.rb"]