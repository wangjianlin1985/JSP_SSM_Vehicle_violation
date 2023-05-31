package com.app.service;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.app.entity.Wz;
public interface WzService {
    public List<Wz> getWzPager(@Param("skip") int skip,@Param("size") int size);
    public  Wz getWzById(int id);   
    public int getWzCount();   
    public int insert(Wz entity);   
    public int delete(int id);   
    public int update(Wz entity);
	public List<Wz> getAllWz();
}
