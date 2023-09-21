package com.testweb;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;

@Path("/test")
public class MyApplication {
    @GET
    public String sayHello(){
        return "HELLO :)";
    }

    @GET
    @Path("{name}")
    public String callName(@PathParam("name") String name){
        return "Welcome " + name;
    }

    @GET
    @Path("{name: ([a-zA-Z])*}")
    public String callName2(@PathParam("name") String name){
        return "Welcome " + name + "(v3)";
    }

    @GET
    @Path("query")
    public String queryParamTest(@QueryParam("name") String name){
        return "queryParam: " + name;
    }

    @GET
    @Path("defaultValue")
    public String defaultValueTest(@QueryParam("name") String name,
                                   @DefaultValue("Busan") @QueryParam("address") String address){
        return "Name: " + name + ", Address: " + address;
    }

    @GET
    @Path("matrix")
    public String matrixParamTest(@MatrixParam("name") String name,
                                  @MatrixParam("address") String address){
        return "Name: " + name + ", Address: " + address;
    }

    /* 미리 지정되어 있어야 테스트가능함 */
    @GET
    @Path("header")
    public String headerParamTest(@HeaderParam("Content-Type") MediaType contentType,
                                  @HeaderParam("User-Agent") MediaType userAgent){
        return "Content-Type: " + contentType + ", user-Agent: " + userAgent;
    }

    /* 미리 지정되어 있어야 테스트가능함 */
    @GET
    @Path("cookies")
    public String cookieParamTest(@CookieParam("sessionId") int sessionId){
        return "Session ID: " + sessionId;
    }

}
