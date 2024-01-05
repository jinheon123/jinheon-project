package com.jinheon.project.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.core.io.ClassPathResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import java.io.IOException;


@Controller
public class FaviconController {

    @GetMapping("favicon.ico")
    public ResponseEntity<byte[]> favicon() throws IOException {
        ClassPathResource resource = new ClassPathResource("static/favicon.ico");
        byte[] faviconData = resource.getInputStream().readAllBytes();

        return ResponseEntity.ok()
                .contentType(MediaType.IMAGE_GIF)
                .body(faviconData);
    }
}




