package com.example.jsp.service;

import com.example.jsp.entity.Post;
import com.example.jsp.repository.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PostService {
    private final PostRepository postRepository;

    @Autowired
    public PostService(PostRepository postRepository) {
        this.postRepository = postRepository;
    }
    public void savePost(Post post) {
        if (post != null) {
            Post savedPost = postRepository.save(post);
            System.out.println("Saved Post: " + savedPost);
        } else {
            System.out.println("Post object is null.");
        }
    }
    public List<Post> getAllPosts() {
        return postRepository.findAll();
    }

    public Post getPostById(Long postId) {
        Optional<Post> optionalPost = postRepository.findById(postId);
        return optionalPost.orElse(null);

    }
}
