package cc.blueday.user.service;

import cc.blueday.user.data.GCloudUsers;

public interface GCloudUserService {

    GCloudUsers getUserById(String id);

    GCloudUsers login(String id,String password);
}
