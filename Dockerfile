#From latest RUBY container
FROM ruby:2.1.9

#Create Group
RUN addgroup --gid 1000 ruby_group
#Add User to Group
RUN adduser --disabled-password --gecos '' --uid 1000 --gid 1000 ruby_user

#Create the dir to host the source code
RUN mkdir /usr/src/app
#Copy git clone to the container
COPY ./adjust/ /usr/src/app/

#Expose 4567 port
EXPOSE 4567
#Chaneg to Workd Dir
WORKDIR /usr/src/app/
# gem install bundler
RUN gem install bundler:1.11.2
#bundle install
RUN bundle install
# Change dir user
RUN chown -R ruby_user:ruby_group /usr/src/app/
#Switch User
USER ruby_user
#Make bootstrap executable
RUN chmod +x helloWorld.rb
#Start the server
CMD ["ruby", "helloWorld.rb"]
