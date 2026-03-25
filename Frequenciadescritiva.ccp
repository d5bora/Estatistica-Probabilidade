#include <iostream>
#include <vector>
#include <algorithm>
#include <iomanip> 

using namespace std;

int main() {
    int tamanho;
    cout << "Quantas idades quer informar? ";
    cin >> tamanho;

    if (tamanho <= 0) return 0;

    vector<int> idades(tamanho);
    for (int i = 0; i < tamanho; i++) {
        cout << "Idade " << i + 1 << ": ";
        cin >> idades[i];
    }

    sort(idades.begin(), idades.end());

    cout << "\nRol (ordem crescente):\n";
    for (int i = 0; i < tamanho; i++) {
        cout << i + 1 << ". " << idades[i] << "\n";
    }

    cout << fixed << setprecision(2);
    cout << "\nTabela de Frequencias:\n";
    cout << "Idade | Simples | Relativa | Acumulada | Rel. Acumulada\n";
    cout << "-------------------------------------------------------\n";

    int freq_simples = 0;
    int acumulada = 0;

    for (int i = 0; i < tamanho; i++) {
        freq_simples++;
        acumulada++;

       
        if (i == tamanho - 1 || idades[i] != idades[i + 1]) {
  
            double rel_simples = (static_cast<double>(freq_simples) / tamanho) * 100;
            double rel_acumulada = (static_cast<double>(acumulada) / tamanho) * 100;

            cout << "  " << idades[i] << "  |    "
                << freq_simples << "    |  "
                << rel_simples << "%  |     "
                << acumulada << "     |    "
                << rel_acumulada << "%\n";

            freq_simples = 0; 
        }
    }

    return 0;
}
