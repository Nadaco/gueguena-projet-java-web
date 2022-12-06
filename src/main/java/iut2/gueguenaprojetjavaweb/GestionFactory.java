package iut2.gueguenaprojetjavaweb;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;

public class GestionFactory {
    private static final HashMap<Integer, Etudiant> LISTE_ID_ETUDIANTS = intializeListEtudiants();
    private static final HashMap<Integer, Integer> LISTE_ID_ABSENCES = intializelistEtudiantAbsence();

    public GestionFactory() {
    }

    private static HashMap<Integer, Etudiant> intializeListEtudiants() {
        Etudiant etu1 = new Etudiant(0, "Brunet-Manquat", "Francis");
        Etudiant etu2 = new Etudiant(1, "Martin", "Philippe");
        HashMap<Integer, Etudiant> listEtudiantsTemp = new HashMap();
        listEtudiantsTemp.put(etu1.getId(), etu1);
        listEtudiantsTemp.put(etu2.getId(), etu2);
        return listEtudiantsTemp;
    }

    private static final HashMap<Integer, Integer> intializelistEtudiantAbsence() {
        HashMap<Integer, Integer> listEtudiantAbsenceTemp = new HashMap();
        Random rand = new Random();
        Iterator var3 = LISTE_ID_ETUDIANTS.values().iterator();

        while(var3.hasNext()) {
            Etudiant etudiant = (Etudiant)var3.next();
            listEtudiantAbsenceTemp.put(etudiant.getId(), rand.nextInt(10));
        }

        return listEtudiantAbsenceTemp;
    }

    public static Collection<Etudiant> getEtudiants() {
        return LISTE_ID_ETUDIANTS.values();
    }

    public static Etudiant getEtudiantById(int id) {
        return (Etudiant)LISTE_ID_ETUDIANTS.get(id);
    }

    public static Integer getAbsencesByEtudiantId(int id) {
        return (Integer)LISTE_ID_ABSENCES.get(id);
    }
}
