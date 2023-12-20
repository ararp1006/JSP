package com.example.jsp.controller;

import com.example.jsp.entity.Post;
import com.example.jsp.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
public class BoardController {

    private final PostService postService;

    @Autowired
    public BoardController(PostService postService) {
        this.postService = postService;
    }

    @GetMapping("board")//글쓰기 화면
    public String getBoard() {
        return "board";
    }

    @PostMapping("/submitPost")//글 저장
    public String postBoard( Post post) {
        postService.savePost(post);
        return "redirect:/boardList";
    }


    @GetMapping("/boardList")
    public String getBoardList(Model model) {
        List<Post> postList = postService.getAllPosts();
        model.addAttribute("postList", postList);
        return "boardList"; // boardList.jsp 파일을 찾아감
    }


    @GetMapping("/postDetail/{postId}") //상세페이지
    public String postDetail(@PathVariable Long postId, Model model) {
       Post post = postService.getPostById(postId);
            model.addAttribute("post", post);
            return "boardDetail";

    }
}
