package com.testweb;

import javax.ws.rs.GET;

public class SubController {
    /* 서브리소스 로케이터 */
    @GET
    public String subPathTest(){
        return "This is the Sub Controller";
    }
}
