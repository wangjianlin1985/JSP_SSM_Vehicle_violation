package com.app.service;
import java.util.List;
import javax.annotation.Resource;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import com.app.entity.Wz;
import com.app.mapper.WzDAO;
@Service
public class WzServiceImpl implements WzService{
	@Resource WzDAO wzDao;
public List<Wz> getWzPager(@Param("skip") int skip,@Param("size") int size){
return wzDao.getWzPager(skip, size);
}
public  Wz getWzById(int id){
return wzDao.getWzById(id);
}
public int getWzCount(){
return wzDao.getWzCount();
}
public int insert(Wz entity){
return wzDao.insert(entity);
}
public int delete(int id){
return wzDao.delete(id);
}
public int update(Wz entity){
return wzDao.update(entity);
}
public List<Wz> getAllWz(){
return wzDao.getAllWz();
}

}
