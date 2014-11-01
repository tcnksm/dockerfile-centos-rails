FROM tcnksm/centos-ruby:2.1

RUN yum update && yum install -y nodejs && yum clean all

# see http://guides.rubyonrails.org/command_line.html#rails-dbconsole
RUN yum update && yum install -y mysql postgresql sqlite && yum clean all

ENV RAILS_VERSION 4.1.6

RUN gem install rails --version "$RAILS_VERSION"
