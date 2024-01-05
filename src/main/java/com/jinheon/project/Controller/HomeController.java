package com.jinheon.project.Controller;

import com.jinheon.project.Entity.Board;
import com.jinheon.project.service.BoardService;
import jakarta.persistence.criteria.CriteriaBuilder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.util.UriUtils;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@Controller
public class HomeController {

    @Autowired
    private BoardService boardService;

    @GetMapping("/")
    public String Home(){
        return "home";
    }

    @GetMapping("/make")
    public String make(){
        return "make";
    }

//    @PostMapping("/writepro")
//    public String boardWritePro(Board board){
//        boardService.write(board);
//        return "back";
//    }

    @PostMapping("/writepro")
    public String boardWritePro(Board board, @RequestParam("file") MultipartFile file, @RequestParam("gender") String gender) throws IOException {
        // 이미지 업로드 처리
        if (!file.isEmpty()) {
            byte[] bytes = file.getBytes();
            String fileName = file.getOriginalFilename();
            String encodedFileName = UriUtils.encode(fileName, StandardCharsets.UTF_8);

            // 경로에 File.separator 대신 /를 사용하거나 Paths.get의 두 번째 매개변수로 이미지 파일 이름만 사용
            String imagePath = "your/image/" + fileName;
            Path path = Paths.get("src/main/resources/static", imagePath);

            Files.write(path, bytes);
            // Board 엔터티에 이미지 경로 설정
            board.setImagePath(imagePath);
        }
        board.setGender(gender);

        boardService.write(board);
        return "/back";
    }

    @GetMapping("/find")
    public String find(Model model){
        model.addAttribute("list", boardService.boardList());
        return "find";
    }

    @GetMapping("/view") // localhost:8805/view?id=1
    public String view(Model model, Integer id){
        model.addAttribute("board", boardService.boardView(id));
        return "view";
    }

//    @GetMapping("/view")
//    public String view(Model model, Integer id) {
//        Board board = boardService.boardView(id);
//        model.addAttribute("board", board);
//
//        // 이미지 파일 경로 전달 (경로에 /resources/ 추가)
//        String imagePath = "your/image/" + board.getImagePath();
//        model.addAttribute("imagePath", imagePath);
//
//
//        return "view";
//    }

    @GetMapping("/delete")
    public String boardDelete(Integer id){
        boardService.boardDelete(id);
        return "redirect:/find";
    }

}



