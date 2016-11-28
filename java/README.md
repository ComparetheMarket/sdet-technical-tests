# Java Tech Test

##Java environment requirements
The Java Runtime Environment version can be jre6-jre8. Install it and the equivalent jdk in the default location.

## Importing and setting up the project into an IDE
The project should be able to be run out-of-the-box. Import it into any IDE which can compile Java and run JUnit.
Right click on the pom.xml file and select Run As>Maven Install
If the option is not there, navigate a terminal into the technical-tests/java location and run:
**./maven/bin/mvn install** if you are on OSX

## Running the tests
The test runner is Unit. Execute the tests from within your IDE by right-clicking stepDefinitions/RunTests.java and running it as a JUnit Test.

I have included the Chrome driver in the repo. The tests currently point to that due to the property set in Hooks.java.