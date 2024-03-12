package ru.netology.jdbctask1.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import ru.netology.jdbctask1.repository.DbRepository;

import java.util.List;

@RestController
public class DbController {
    private final DbRepository dbRepository;

    public DbController(DbRepository dbRepository) {
        this.dbRepository = dbRepository;
    }

    @GetMapping("/products/fetch-product")
    public List<String> getProductName(@RequestParam String name) {
        return dbRepository.getProductName(name);
    }
}