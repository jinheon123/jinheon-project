package com.jinheon.project.Entity;

import jakarta.persistence.*;
import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Data
public class Board {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String day;
    private String title;
    private String content;
    private String callNumber;
    private String location;
    private String animal;
    private String gender;

    @Transient
    private MultipartFile imageFile;
    private String imagePath;
}
