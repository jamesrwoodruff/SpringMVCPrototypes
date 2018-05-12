## SpringMVCPrototype02
A simple Spring MVC project.

## Technical Summary

This Java project uses the Spring MVC framework and includes the following:

* Java configuration (JavaConfig) only; no xml config
* Uses JavaConfig to register and configure Spring's DispatcherServlet (instead of web.xml)
* Uses Bootstrap for UI
* Uses logback/sl4j for logging
* Includes rudimentary example test of a controller using JUnit, Mockito and Spring test features such as MockMvc

## Configuration
As noted above, this project uses Java to configure DispatcherServlet. Note that HelloWorldInitializer extends 
**AbstractAnnotationConfigDispatcherServletInitializer**. This will be automatically used to configure DispatcherServlet 
and the Spring application context in the application's servlet context.

```
public class HelloWorldInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
```

In **HelloWorldInitializer**, the following method identifies a path that the DispatcherServlet will be mapped to. In this case, it indicates "/" as the default.
```
@Override
protected String[] getServletMappings() {
  return new String[] {"/"};
}
```
This method, also from **HelloWorldInitializer**, asks DispatcherServlet to load its application context with beans defined in the HelloWorldConfiguration configuration class (using Java configuration).
```
@Override
protected Class<?>[] getServletConfigClasses() {
  return new Class[] { HelloWorldConfiguration.class };  
}
```

## Run Instructions

Run on web server (e.g., Tomcat), then visit url http://localhost:8080/SpringMVCPrototype02/

