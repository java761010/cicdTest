# hello-ci-lab (Java 21 / Maven WAR)

## Requirements
- JDK 21
- Maven 3.9+
- Apache Tomcat 10.1.x (Jakarta Servlet 6.0)
- STS4 / Eclipse with Maven integration

## Import into STS4
1. Unzip into a **new, empty** directory, e.g. `D:\workspace\hello-ci-lab-new`.
2. File > Import > Maven > Existing Maven Projects > Next.
3. Root Directory: the unzipped `hello-ci-lab` folder containing `pom.xml`.
4. Check `pom.xml` and click Finish.
5. Window > Preferences > Java > Installed JREs: select JDK 21.
6. Project > Properties > Java Compiler: set compliance to 21 if necessary.
7. Right-click project > Maven > Update Project.

## Build
```bat
java -version
mvn -version
mvn clean package
```
Output: `target/hello-ci-lab.war`.

## Tomcat
Copy `target/hello-ci-lab.war` to Tomcat 10.1's `webapps` directory.
- http://localhost:8080/hello-ci-lab/
- http://localhost:8080/hello-ci-lab/hello
- http://localhost:8080/hello-ci-lab/health  (returns OK)

## Jenkins
- Jenkinsfile expects Windows agent and configured Jenkins tool names `JDK21` and `Maven3`.
- It performs checkout, Maven build, and WAR archiving; **it does not automatically deploy**.
- GitHub credentials and server deployment should be configured separately using Jenkins credentials, not hardcoded in source.

## Git
This ZIP intentionally contains no `.git` directory. Initialize or connect Git only after importing the project and verifying the build. Do not paste passwords or tokens into source files.
