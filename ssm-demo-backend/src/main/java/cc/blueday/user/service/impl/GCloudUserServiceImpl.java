package cc.blueday.user.service.impl;

import cc.blueday.user.dao.GCloudUsersMapper;
import cc.blueday.user.data.GCloudUsers;
import cc.blueday.user.service.GCloudUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GCloudUserServiceImpl implements GCloudUserService {

    @Autowired
    private GCloudUsersMapper gCloudUsersMapper;

    public GCloudUsers getUserById(String id){
        return gCloudUsersMapper.getUserById(id);
    }
    public GCloudUsers login(String id,String password){
        return gCloudUsersMapper.login(id,password);
    }
}
