/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kampusapp.webcontroller;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import kampusapp.dao.KampusDAO;
import kampusapp.dao.kampusDAOProses;
import kampusapp.modul.DatabaseConfig;
import kampusapp.modul.Mahasiswa;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author user
 */
@Controller
public class HomeController {
    KampusDAO mhsDao=null;
    public HomeController(){
        mhsDao=new kampusDAOProses();
    }
    @RequestMapping(value="/home")
    public ModelAndView home(HttpServletRequest req,HttpServletResponse res) throws SQLException{
        /*Connection connection=null;
        connection=DatabaseConfig.openConnection();
        if(connection!=null){
            ModelAndView modelandview=new ModelAndView();
            modelandview.addObject("msg","koneksi DB Sukses");
            return modelandview;
        }else{
            ModelAndView modelandview=new ModelAndView();
            modelandview.addObject("msg","koneksi DB Gagal");
            return modelandview;
        }*/
        return listMahasiswa(req,res);
    }   

    private ModelAndView listMahasiswa(HttpServletRequest req, HttpServletResponse res) {
        List<Mahasiswa> list=mhsDao.get();
        ModelAndView modelandview=new ModelAndView();
        modelandview.addObject("listMahasiswa", list);
        return modelandview;
    }
}
    

