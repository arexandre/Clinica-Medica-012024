/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.edu.imepac.clinica.medica;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

/**
 *
 * @author alexandre
 */

public class AbrirJFrameAction implements ActionListener {

    private JFrame outraJFrame;

    public AbrirJFrameAction(JFrame outraJFrame) {
        this.outraJFrame = outraJFrame;
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        outraJFrame.setVisible(true);
    }
}