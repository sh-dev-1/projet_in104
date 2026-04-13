#include "../include/utils.h"

double calculer_tva(double montant, double taux) {
    return montant * (taux / 100.0);
}