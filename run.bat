@echo off
REM Load .env file and set environment variables
for /f "tokens=1,2 delims==" %%A in (.env) do (
    set %%A=%%B
)

REM Run Maven
mvn clean install -DskipTests
mvn spring-boot:run

pause