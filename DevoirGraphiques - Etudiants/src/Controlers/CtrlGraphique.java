package Controlers;

import Entities.DatasGraph;
import Tools.ConnexionBDD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CtrlGraphique
{
    private Connection cnx;
    private PreparedStatement ps;
    private ResultSet rs;

    public CtrlGraphique() {
        cnx = ConnexionBDD.getCnx();
    }
    public HashMap<Integer,Float> GetDatasGraphique1()
    {
        HashMap<Integer, Float> datas = new HashMap();
        try {
            cnx = ConnexionBDD.getCnx();
            ps = cnx.prepareStatement(
                    "SELECT employe.ageEmp,AVG(employe.salaireEmp)\n"+
                    "FROM employe\n"+
                     "GROUP BY employe.ageEmp"
            );
            rs = ps.executeQuery();
            while(rs.next())
            {
                datas.put(rs.getInt(1), rs.getFloat(2));
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(CtrlGraphique.class.getName()).log(Level.SEVERE, null, ex);
        }
        return datas;
    }
    public HashMap<Integer,Integer> GetDatasGraphique2()
    {
        HashMap<Integer, Integer> datas = new HashMap();
        try {
            cnx = ConnexionBDD.getCnx();
            ps = cnx.prepareStatement(
                    "SELECT pourcentagehomme2.pourcentage , pourcentagefemme2.pourcentage\n"+
                    "FROM pourcentagehomme2,pourcentagefemme2"

            );
            rs = ps.executeQuery();
            while(rs.next())
            {
                datas.put(rs.getInt(1), rs.getInt(2));
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(CtrlGraphique.class.getName()).log(Level.SEVERE, null, ex);
        }
        return datas;
    }
    public HashMap<Integer,String[]> GetDatasGraphique4()
    {
        HashMap<Integer,String[]> datas = new HashMap();
        try {
            cnx = ConnexionBDD.getCnx();
            ps = cnx.prepareStatement("SELECT vente.montant , vente.nomMagasin , vente.nomSemestre\n" +
                    "from vente");
            rs = ps.executeQuery();
            int i = 1;
            while(rs.next())
            {
                datas.put(i, new String[]{rs.getString(1),rs.getString(2),rs.getString(3)});
                i++;
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(CtrlGraphique.class.getName()).log(Level.SEVERE, null, ex);
        }
        return datas;
    }


}
