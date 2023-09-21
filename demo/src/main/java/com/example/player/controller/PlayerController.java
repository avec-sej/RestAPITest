package com.example.player.controller;

import com.example.demo.DemoApplication;
import com.example.player.service.Player;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;

@RestController
@RequestMapping(value="/player")
public class PlayerController {

    @RequestMapping(value="/", method= RequestMethod.GET)
    public HashMap<Long, Player> getAllPlayers(){

        return DemoApplication.PlayerHm;
    }
}
