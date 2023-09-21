package com.example.player.service;

import java.util.Date;

public class Player {

    private long id;
    private String name;
    private String team;

    public Player(){

    }

    public Player(String name, String team){
        this.id = (new Date()).getTime();
        this.name = name;
        this.team = team;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTeam() {
        return team;
    }

    public void setTeam(String team) {
        this.team = team;
    }
}
