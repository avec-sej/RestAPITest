package com.example.demo;

import com.example.player.service.Player;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import java.util.HashMap;

@SpringBootApplication
@ComponentScan(basePackages = "com.example")
public class DemoApplication {
    public static HashMap<Long, Player> PlayerHm;

    public static void main(String[] args) {
        PlayerHm =new HashMap<Long, Player>();

        Player player_one = new Player("Christiano Ronaldo", "Real Madrid");
        PlayerHm.put(new Long(player_one.getId()), player_one);

        SpringApplication.run(DemoApplication.class, args);

        Player player_two = new Player("Lionel Messi", "FC Barcelona");
        PlayerHm.put(new Long(player_two.getId()), player_two);
    }





}
