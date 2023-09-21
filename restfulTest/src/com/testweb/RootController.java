package com.testweb;

import javax.ws.rs.Path;

@Path("/rootPath")
public class RootController {
    /* 서브리소스 로케이터 */
    @Path("/subPath")
    public SubController subResourceLocator(){
        return new SubController();
    }
}
