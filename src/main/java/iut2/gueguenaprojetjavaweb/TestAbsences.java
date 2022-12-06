//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package iut2.gueguenaprojetjavaweb;

import java.util.Iterator;

public class TestAbsences {
    public TestAbsences() {
    }

    public static void main(String[] args) {
        Iterator var2 = GestionFactory.getEtudiants().iterator();

        while(var2.hasNext()) {
            Etudiant etu = (Etudiant)var2.next();
            System.out.print("Etudiant : " + etu.getPrenom() + " " + etu.getNom());
            System.out.println(" -> nombre d'absences : " + GestionFactory.getAbsencesByEtudiantId(etu.getId()));
        }

    }
}
