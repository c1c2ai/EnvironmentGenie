package com.example.bo;

import java.util.List;

import com.example.dao.MycollectionDAO;
import com.example.domain.Mycollection1;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

//import com.example.dao.PostDAO;
import com.example.domain.Post;

@Service
public class MyCollectionBO {

    private MycollectionDAO myCollectionDAO;

    @Autowired
    public void setMyCollectionDAO(MycollectionDAO myCollectionDAO) {
        this.myCollectionDAO = myCollectionDAO;
    }





    public List<Mycollection1> getAllCollections(){
        return this.myCollectionDAO.getAllCollections();
    }
//    public void setPostDao(PostDAO postDAO) {
//        this.postDAO = postDAO;
//    }
//
//    public void savePost(Post post) {
//        this.postDAO.savePost(post);
//    }
//
//    public void deletePost(Post post) {
//        this.postDAO.deletePost(post);
//    }



//    public List<Post> getAllUsersPosts(String user){
//        return this.postDAO.getAllUsersPosts(user);
//    }
//
//    public Post getPostById(String id){
//        return this.postDAO.getPostById(id);
//    }
}
