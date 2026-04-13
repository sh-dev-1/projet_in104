Convention d'écriture choisie :

    pour le fichier csv
        les champs : date/heure/bénéficiaire/montant/urgence/priorité/description_de_la_transaction
        le format  : "AAAA-MM-JJ"   "HH:MM"   "Nom"   123.45   "0-1-2"   "0-1-2"   "message descriptif"
        les types  : string(11)     string(6)  string(malloc)   double     unsigned int    unsigned int    string(malloc)

    pour les dépenses à venir (prévisionnelles):
        les champs : bénéficiaire/montant/urgence/priorité/description_de_la_transaction
        le format  : "Nom"   123.45   "0-1-2"   "0-1-2"   "message descriptif"
        les types  : string(malloc)   double     unsigned int    unsigned int    string(malloc)
    pour la structure:
        arbre avl:
            typedef struct transaction_{
                unsigned int id; //l'id est calculé à partir de la date et de l'heure de transaction grâce à la fonction calcul id
                //Amir zid 3ammar kifech 
            } transaction_t;
        TAS montant max:

        TAS montant min:

        TAS urgence: