package cc.blueday.test;

import cc.blueday.login.dao.GCloudUsersMapper;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.InputStream;
import java.util.Map;

public class Test {
    public static void main(String[] args) {
        SqlSessionFactory sqlSessionFactory=null;
        String res="mybatis-config.xml";
        InputStream inputStream;
        SqlSession session = null;
        try {
            inputStream= Resources.getResourceAsStream(res);
            sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
            session = sqlSessionFactory.openSession(true);
            GCloudUsersMapper userMapper = session.getMapper(GCloudUsersMapper.class);
            Map<String, Object> userMap = userMapper.getUserById("sdmali");
            System.out.println(userMap);
        }catch (Exception r){
            r.printStackTrace();
        } finally {
            if (session != null) {
                session.close();
            }
        }
    }
}
