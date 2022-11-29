package Vues;

import Controlers.CtrlGraphique;
import Entities.DatasGraph;
import Tools.ConnexionBDD;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartFrame;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.axis.CategoryLabelPositions;
import org.jfree.chart.labels.StandardPieSectionLabelGenerator;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.CombinedDomainXYPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.plot.RingPlot;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.general.DefaultKeyedValues2DDataset;
import org.jfree.data.general.DefaultPieDataset;
import org.jfree.data.general.PieDataset;
import org.jfree.data.xy.XYDataset;
import org.jfree.data.xy.XYZDataset;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.beans.PropertyChangeListener;
import java.sql.SQLException;
import java.util.Map;

public class FrmGraphique extends JFrame{
    private JPanel pnlGraph1;
    private JPanel pnlGraph2;
    private JPanel pnlGraph3;
    private JPanel pnlGraph4;
    private JPanel pnlRoot;
    CtrlGraphique ctrlGraphique;

    public FrmGraphique() throws SQLException, ClassNotFoundException {
        this.setTitle("Devoir graphique");
        this.setContentPane(pnlRoot);
        this.pack();
        this.setDefaultCloseOperation(EXIT_ON_CLOSE);
        this.setLocationRelativeTo(null);

        ConnexionBDD cnx = new ConnexionBDD();
        ctrlGraphique = new CtrlGraphique();



        pnlGraph2.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseMoved(MouseEvent e) {
                super.mouseMoved(e);
                DefaultPieDataset donnees = new DefaultPieDataset();

                for (Map.Entry valeur : ctrlGraphique.GetDatasGraphique2().entrySet())
                {
                    donnees.setValue(valeur.getKey().toString(), Integer.parseInt(valeur.getValue().toString()));
                }

                JFreeChart chart1 = ChartFactory.createPieChart(
                        "Pourcentage d'homme et femme",
                        donnees,
                        true, //
                        true, //
                        true //
                );
                ChartFrame frame = new ChartFrame("Graphique n°2", chart1);
                frame.pack();
                frame.setVisible(true);

            }
        });
        pnlGraph4.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseMoved(MouseEvent e) {
                super.mouseMoved(e);
                // HISTOGRAMME
                DefaultCategoryDataset donnees = new DefaultCategoryDataset();

                for (Map.Entry valeur : ctrlGraphique.GetDatasGraphique4().entrySet())
                {

                }

                JFreeChart chart1 = ChartFactory.createBarChart(
                        "Montant des ventes  par magasin",
                        "Magasins",
                        "Montant des ventes",
                        donnees,
                        PlotOrientation.VERTICAL,
                        true, true, false);
                ChartFrame frame = new ChartFrame("Graphique n°4", chart1);
                frame.pack();
                frame.setVisible(true);

            }
        });
        pnlGraph3.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseMoved(MouseEvent e) {
                super.mouseMoved(e);

            }
        });

        /*
        pnlGraph1.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseMoved(MouseEvent e) {
                super.mouseMoved(e);
                DefaultCategoryDataset donnees = new DefaultCategoryDataset();

                for (Map.Entry valeur : ctrlGraphique.GetDatasGraphique1().entrySet())
                {
                    donnees.setValue(valeur.getKey().toString()) , Float.parseFloat(valeur.getValue().toString()));
                }
                JFreeChart chart1 = ChartFactory.createLineChart("Salaire moyen " , "age des employes", "", donnees);
                ChartFrame fra = new ChartFrame("Moyenne des salaires par age", chart1);
                fra.pack();
                fra.setVisible(true);
            }
        });
        */

        pnlGraph2.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseWheelMoved(MouseWheelEvent e) {
                super.mouseWheelMoved(e);
            }
        });
    }
}
