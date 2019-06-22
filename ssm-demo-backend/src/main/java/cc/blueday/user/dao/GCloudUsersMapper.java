package cc.blueday.user.dao;

import cc.blueday.user.data.GCloudUsers;


public interface GCloudUsersMapper {
    GCloudUsers getUserById(String id);

    GCloudUsers login(String id, String password);
}
