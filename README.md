# hello-world-web

Semplice progetto Web per far vedere l'uso dei `JSP`, i `Servlet` e le richieste `HTTP`.

Gli esempi coprono i casi:
- Richieste `HTTP GET` da una `JSP` a un altra `JSP`
- Richieste `HTTP POST` da una `JSP` a un altra `JSP`
- Richieste `HTTP GET` da una `JSP` a un `Servlet`
- Richieste `HTTP POST` da una `JSP` a un `Servlet`
- L'uso del `<jsp:include..>` per costruire `JSP` composte.
- Gestire i parametri delle richieste GET e POST.
- Uso della `sessione` ??
- Uso dei `Cookie` ??

### Download and deploy the project

- Scaricare il file di distribuzione `.war` presente nel percorso `./dist/hello-world-web.war`.
- Copia il file `.war` nel `application Server`, esempio `Tomcat` `%CATALINA_HOME%\webapps`. 
- start Tomcat se non sta girando.
- `http://localhost:8080/hello-world-web/`


# See
* [hello-world-web-maven](https://github.com/sandrus88/hello-world-web-maven) - stesso progetto usando Maven