FROM amazonlinux:latest
RUN yum update -y && yum install gcc-c++ -y
COPY . ./ 
RUN g++ clientTCP.cpp -o clientTCP
RUN g++ serverTCP.cpp -o serverTCP
RUN g++ clientUDP.cpp -o clientUDP
RUN g++ serverUDP.cpp -o serverUDP
