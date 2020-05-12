package com.universitysys.SSE.service;

import com.universitysys.SSE.model.Account;
import com.universitysys.SSE.model.Students;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;
import com.universitysys.SSE.repository.StatisticRepository;
import org.thymeleaf.util.StringUtils;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import static org.thymeleaf.util.StringUtils.trim;

@Service
public class StatisticService {
    @Autowired
    JdbcTemplate jdbcTemplate;

    public List<Students> getOne(int id){
        String sql ="select * from student where id=?;";
        List<Students> users = jdbcTemplate.query(sql,new UserMapper());
        return users;
    }
    public List<Students> showInfo(){
        String sql1 = "select * from student";
        List<Students> users = jdbcTemplate.query(sql1,new UserMapper());
        return users;
        }



    class UserMapper implements RowMapper<Students> {
        public Students  mapRow(ResultSet rs, int arg1) throws SQLException {
            Students user = new Students();
            user.setName(trim(rs.getString("name")));
            user.setSurname(trim(rs.getString("surname")));
            user.setDate_of_birth(trim(rs.getString("date_of_birth")));
            user.setSex(trim(rs.getString("sex")));
            user.setNationality(trim(rs.getString("nationality")));
            user.setId(rs.getInt("id"));
            return user;
        }
    }





}
