FROM openjdk:8-jdk-stretch

WORKDIR /app

CMD javac solution.java && java Solution
