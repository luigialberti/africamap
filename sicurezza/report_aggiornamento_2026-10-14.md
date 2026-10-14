# Report aggiornamento schede di sicurezza — 2026-10-14

Modalità: **SICUREZZA** (aggiornati solo i file `sicurezza/*.md`; cartella `stati/` non modificata).
Fonte primaria: ViaggiareSicuri (Ministero degli Affari Esteri e della Cooperazione Internazionale). Data di consultazione per tutti i Paesi: 2026-10-14.

## Sintesi

- Stati rilevati nell'SVG (layer10, `inkscape:label`): 47, più un path vuoto `path26` senza geometria né nome (ignorato).
- Paesi analizzati: 47. Aggiornati: 46. Parzialmente verificati: 1 (Gabon). Non verificati: 0.
- Lettura integrale del PDF ufficiale: Tanzania, Kenya, Etiopia, Repubblica Democratica del Congo, Eritrea. Per gli altri 42 Paesi la verifica si basa su estratti indicizzati del PDF o della pagina ufficiale ViaggiareSicuri.
- File scritti in `sicurezza/`: 72 (47 schede principali più alias).
- Stato dei riquadri di allerta rispetto ai file di partenza: 28 alert modificato, 19 alert rimosso.

## Limite di metodo da conoscere

La pagina Paese di ViaggiareSicuri è un'applicazione JavaScript non leggibile dagli strumenti usati; il contenuto ufficiale è stato letto dai PDF `schede_paese/pdf/XXX.pdf`. Quando la lettura è avvenuta tramite estratti indicizzati, la versione indicizzata può essere anteriore a quella online: per l'Eritrea, per esempio, gli estratti riportavano giugno 2026 mentre la scheda reale era stata aggiornata il 12/10/2026. Ogni scheda dichiara il metodo usato e la data rilevata; i casi con discrepanze sono elencati sotto come revisione manuale.

## Anomalie di compatibilità mappa / file (corrette)

1. **Congo / RD Congo.** Nell'SVG il path `congo` è la Repubblica del Congo (Brazzaville), mentre il path `repubblica-del-congo` corrisponde geograficamente alla **Repubblica Democratica del Congo** (verificato tramite bounding box). Il file `sicurezza/repubblica-del-congo.md` conteneva invece la scheda del Congo-Brazzaville: ora contiene la scheda RDC (`COD`). Lo stesso errore è verosimilmente presente in `stati/repubblica-del-congo.md`, non modificato in questa modalità: **da correggere manualmente** (oppure rinominare l'etichetta SVG in `repubblica democratica del congo`).
2. **Sudan del Sud.** L'etichetta SVG genera lo slug `sudan-del-sud`, assente nei file di partenza: creato `sudan-del-sud.md`. Verificare se manca anche `stati/sudan-del-sud.md`.
3. **Repubblica Centrafricana.** L'etichetta SVG `repubblica centroafricana` genera `repubblica-centroafricana`, mentre il file esistente era `repubblica-centrafricana`: creato il file con il nome atteso. Verificare anche in `stati/`.
4. Nessuna modifica è stata necessaria a SVG o HTML.

## Esito Paese per Paese

| Paese | Codice | Stato | Metodo | Ultimo aggiornamento fonte | Livello sintetico (editoriale) | Riquadro alert | Note / revisione |
|---|---|---|---|---|---|---|---|
| Algeria | `DZA` | Aggiornato | Estratti indicizzati | 26/07/2026 (cronologia: 28/01/2026 - Sicurezza > Aree di particolare cautela) | Aree di confine sconsigliate | alert modificato |  |
| Angola | `AGO` | Aggiornato | Estratti indicizzati | 20/04/2026 | Cautela, con aree sconsigliate | alert rimosso |  |
| Benin | `BEN` | Aggiornato | Estratti indicizzati | 28/09/2026 secondo la pagina ufficiale; contenuto letto dalla versione indicizzata del PDF (23/04/2025) | Nord sconsigliato | alert modificato | Pagina aggiornata al 28/09/2026, contenuto letto da PDF precedente (23/04/2025). |
| Botswana | `BWA` | Aggiornato | Estratti indicizzati | 19/03/2025 (versione del PDF ufficiale indicizzata, possibile non attuale) | Cautela ordinaria | alert rimosso | PDF indicizzato del 19/03/2025, data corrente non verificabile. |
| Burkina Faso | `BFA` | Aggiornato | Estratti indicizzati | 13/10/2025 (versione del PDF ufficiale indicizzata) | Viaggi sconsigliati in tutto il Paese | alert modificato | PDF indicizzato del 13/10/2025. |
| Burundi | `BDI` | Aggiornato | Estratti indicizzati | 29/12/2025 (versione del PDF ufficiale indicizzata) | Aree di confine sconsigliate | alert modificato |  |
| Camerun | `CMR` | Aggiornato | Estratti indicizzati | 16/09/2025 (versione del PDF ufficiale indicizzata) | Ampie aree sconsigliate | alert modificato | PDF indicizzato del 16/09/2025; regioni anglofone non verificate negli estratti. |
| Ciad | `TCD` | Aggiornato | Estratti indicizzati | 16/09/2025 (versione del PDF ufficiale indicizzata, possibile non attuale) | Ampie aree fortemente sconsigliate | alert modificato | PDF indicizzato del 16/09/2025, possibile non attuale. |
| Congo (Repubblica del Congo) | `COG` | Aggiornato | Estratti indicizzati | 23/02/2026; avviso "In evidenza" del 03/06/2026 (screening sanitari Ebola) | Cautela, con zone di particolare attenzione | alert rimosso |  |
| Costa d'Avorio | `CIV` | Aggiornato | Estratti indicizzati | 11/03/2026 (versione del PDF ufficiale indicizzata) | Aree settentrionali sconsigliate | alert rimosso |  |
| Egitto | `EGY` | Aggiornato | Estratti indicizzati | 20/07/2026 (cronologia: 21/07/2026 - Requisiti di ingresso, CIE) | Aree sconsigliate fuori dalle zone turistiche principali | alert modificato |  |
| Eritrea | `ERI` | Aggiornato | PDF integrale | 11/10/2026 (cronologia: 12/10/2026 - Sicurezza > Aree di particolare cautela) | Aree di confine sconsigliate; forti restrizioni agli spostamenti | alert modificato |  |
| Etiopia | `ETH` | Aggiornato | PDF integrale | 04/10/2026 (cronologia: revisione generale 05/10/2026) | Ampie aree sconsigliate | alert modificato |  |
| Gabon | `GAB` | Parzialmente verificato | Estratti indicizzati | 14/07/2026 | Cautela (dettagli da verificare) | alert rimosso | Parzialmente verificato: confermata solo la data; dettaglio aree di cautela non letto. |
| Gambia | `GMB` | Aggiornato | Estratti indicizzati | 06/07/2026 (versione del PDF ufficiale indicizzata) | Cautela ordinaria | alert rimosso |  |
| Ghana | `GHA` | Aggiornato | Estratti indicizzati | 28/05/2026 (cronologia: 25/05/2026 - Sicurezza > Aree di particolare cautela) | Cautela, con aree settentrionali da evitare | alert rimosso |  |
| Gibuti | `DJI` | Aggiornato | Estratti indicizzati | 31/05/2026 (versione del PDF ufficiale indicizzata) | Aree di confine sconsigliate | alert rimosso |  |
| Guinea | `GIN` | Aggiornato | Estratti indicizzati | 03/09/2026 (versione del PDF ufficiale indicizzata) | Cautela elevata, con zone da evitare | alert rimosso |  |
| Guinea Equatoriale | `GNQ` | Aggiornato | Estratti indicizzati | 14/01/2026 | Cautela, con vigilanza nelle aree di confine | alert rimosso |  |
| Guinea-Bissau | `GNB` | Aggiornato | Estratti indicizzati | 30/12/2025 (versione del PDF ufficiale indicizzata) | Viaggi non necessari sconsigliati | alert modificato |  |
| Kenya | `KEN` | Aggiornato | PDF integrale | 08/10/2026 (cronologia: ultima modifica 09/10/2026 - assicurazione sanitaria di viaggio) | Aree sconsigliate e zone di particolare cautela | alert modificato |  |
| Liberia | `LBR` | Aggiornato | Estratti indicizzati | 25/03/2026 (versione del PDF ufficiale indicizzata) | Aree sconsigliate e cautela | alert modificato |  |
| Libia | `LBY` | Aggiornato | Estratti indicizzati | 17/06/2026 (versione del PDF ufficiale indicizzata) | Viaggi sconsigliati salvo necessità | alert modificato |  |
| Madagascar | `MDG` | Aggiornato | Estratti indicizzati | 20/07/2026 (cronologia: 21/07/2026 - Sicurezza > Indicazioni generali); avviso "In evidenza" del 10/09/2026 sulle misure sanitarie | Cautela elevata per criminalità | alert modificato |  |
| Malawi | `MWI` | Aggiornato | Estratti indicizzati | 23/02/2026; avviso "In evidenza" del 09/07/2026 sull'Ebola | Cautela ordinaria | alert rimosso |  |
| Mali | `MLI` | Aggiornato | Estratti indicizzati | 17/09/2026; avviso "In evidenza" del 18/09/2026 | Viaggi sconsigliati in tutto il Paese | alert modificato |  |
| Marocco | `MAR` | Aggiornato | Estratti indicizzati | 19/04/2026 (versione del PDF ufficiale indicizzata) | Cautela, con aree di confine sconsigliate | alert rimosso |  |
| Mauritania | `MRT` | Aggiornato | Estratti indicizzati | Non indicata/verificabile negli estratti consultati | Aree di confine sconsigliate | alert modificato | Data di aggiornamento non verificabile. |
| Mozambico | `MOZ` | Aggiornato | Estratti indicizzati | 25/02/2026 (versione del PDF ufficiale indicizzata; verificare se esiste una versione successiva) | Aree sconsigliate e zone di particolare cautela | alert modificato | PDF indicizzato del 25/02/2026, possibile versione successiva. |
| Namibia | `NAM` | Aggiornato | Estratti indicizzati | 23/02/2026 | Cautela ordinaria | alert rimosso |  |
| Niger | `NER` | Aggiornato | Estratti indicizzati | 25/06/2026 (versione del PDF ufficiale indicizzata) | Viaggi sconsigliati in tutto il Paese | alert modificato | Estratti parziali del PDF del 25/06/2026. |
| Nigeria | `NGA` | Aggiornato | Estratti indicizzati | 14/06/2026 (versione del PDF ufficiale indicizzata) | Viaggi non indispensabili sconsigliati; ampie aree assolutamente sconsigliate | alert modificato |  |
| Repubblica Centrafricana | `CAF` | Aggiornato | Estratti indicizzati | 22/09/2026 | Viaggi sconsigliati in tutto il Paese | alert modificato |  |
| Repubblica Democratica del Congo | `COD` | Aggiornato | PDF integrale | 17/05/2026 (cronologia: 18/05/2026 - Situazione sanitaria); avviso "In evidenza" del 07/08/2026 sull'Ebola | Viaggi da rimandare; ampie aree fortemente sconsigliate | alert modificato |  |
| Ruanda | `RWA` | Aggiornato | Estratti indicizzati | 09/09/2026 secondo la pagina ufficiale; contenuto letto dalla versione indicizzata del PDF datata 08/12/2025 | Aree di confine sconsigliate | alert modificato | Pagina aggiornata al 09/09/2026, contenuto letto da PDF dell'08/12/2025. |
| Senegal | `SEN` | Aggiornato | Estratti indicizzati | 23/09/2026 (cronologia: 20/02/2025 - Sicurezza > Aree di particolare cautela) | Aree di confine sconsigliate e zone di particolare cautela | alert rimosso |  |
| Sierra Leone | `SLE` | Aggiornato | Estratti indicizzati | 09/06/2026 (versione del PDF ufficiale indicizzata) | Cautela | alert rimosso |  |
| Somalia | `SOM` | Aggiornato | Estratti indicizzati | 16/09/2026 (cronologia: revisione generale 17/09/2026) | Viaggi sconsigliati in tutto il Paese | alert modificato |  |
| Sud Sudan | `SSD` | Aggiornato | Estratti indicizzati | 31/05/2026 (cronologia: revisione generale 01/06/2026) | Viaggi sconsigliati in tutto il Paese | alert modificato |  |
| Sudafrica | `ZAF` | Aggiornato | Estratti indicizzati | 09/08/2026 | Cautela elevata per criminalità | alert rimosso |  |
| Sudan | `SDN` | Aggiornato | Estratti indicizzati | 29/12/2025 (cronologia: revisione generale 30/12/2025) | Viaggi sconsigliati in tutto il Paese | alert modificato | Ultimo aggiornamento ufficiale 29/12/2025. |
| Tanzania | `TZA` | Aggiornato | PDF integrale | 27/09/2026 (cronologia: ultima modifica 28/09/2026 - Requisiti di ingresso) | Aree sconsigliate e zone di particolare cautela | alert modificato |  |
| Togo | `TGO` | Aggiornato | Estratti indicizzati | 15/01/2026 (versione del PDF ufficiale indicizzata) | Regione settentrionale sconsigliata | alert modificato |  |
| Tunisia | `TUN` | Aggiornato | Estratti indicizzati | 29/09/2026 (cronologia: 07/09/2026 - Sicurezza > Aree di particolare cautela) | Aree di confine sconsigliate | alert modificato |  |
| Uganda | `UGA` | Aggiornato | Estratti indicizzati | 27/07/2026 (versione del PDF ufficiale indicizzata) | Cautela, con aree di particolare attenzione | alert rimosso |  |
| Zambia | `ZMB` | Aggiornato | Estratti indicizzati | 26/03/2026 (cronologia: 27/03/2026 - Sicurezza > Avvertenze); avviso "In evidenza" del 20/05/2026 sull'Ebola | Cautela ordinaria | alert rimosso |  |
| Zimbabwe | `ZWE` | Aggiornato | Estratti indicizzati | 28/09/2026 (versione del PDF ufficiale indicizzata) | Cautela ordinaria | alert rimosso |  |

## Casi che richiedono revisione manuale

- **gabon**: Parzialmente verificato: confermata solo la data; dettaglio aree di cautela non letto.
- **ciad**: PDF indicizzato del 16/09/2025, possibile non attuale.
- **camerun**: PDF indicizzato del 16/09/2025; regioni anglofone non verificate negli estratti.
- **botswana**: PDF indicizzato del 19/03/2025, data corrente non verificabile.
- **mauritania**: Data di aggiornamento non verificabile.
- **mozambico**: PDF indicizzato del 25/02/2026, possibile versione successiva.
- **benin**: Pagina aggiornata al 28/09/2026, contenuto letto da PDF precedente (23/04/2025).
- **rwanda**: Pagina aggiornata al 09/09/2026, contenuto letto da PDF dell'08/12/2025.
- **sudan**: Ultimo aggiornamento ufficiale 29/12/2025.
- **burkina-faso**: PDF indicizzato del 13/10/2025.
- **niger**: Estratti parziali del PDF del 25/06/2026.
- **Eritrea**: nessuna revisione necessaria, ma è un esempio di scheda aggiornata due giorni prima della consultazione; conviene ricontrollare spesso i Paesi in rapida evoluzione (Etiopia, RD Congo, Sudan, Sud Sudan, Mali).

## Fonti istituzionali aggiuntive (non ViaggiareSicuri)

- Ministero della Salute, scheda Ebola (https://www.salute.gov.it/new/it/scheda-malattia/ebola/): usata per lo stato delle ordinanze sanitarie sui rientri (nuova ordinanza dal 2 ottobre 2026; nessuna misura specifica per l'Uganda). Citata nelle schede RD Congo e Uganda, con etichetta di fonte alternativa.
- Organizzazione Mondiale della Sanità, dichiarazione di emergenza Ebola, citata dalla scheda ufficiale RDC.

## Alias scritti con contenuto identico

- `camerun.md` → `cameroon.md`
- `ciad.md` → `chad.md`
- `congo.md` → `congo-brazzaville.md`, `republic-of-the-congo.md`
- `costa-d-avorio.md` → `cote-d-ivoire.md`, `ivory-coast.md`
- `egitto.md` → `egypt.md`
- `etiopia.md` → `ethiopia.md`
- `gambia.md` → `the-gambia.md`
- `gibuti.md` → `djibouti.md`
- `guinea-equatoriale.md` → `equatorial-guinea.md`
- `marocco.md` → `morocco.md`
- `mozambico.md` → `mozambique.md`
- `repubblica-centrafricana.md` → `central-african-republic.md`, `repubblica-centroafricana.md`
- `repubblica-democratica-del-congo.md` → `congo-kinshasa.md`, `democratic-republic-of-congo.md`, `democratic-republic-of-the-congo.md`, `dr-congo.md`, `drc.md`, `repubblica-del-congo.md`
- `sud-africa.md` → `south-africa.md`, `sudafrica.md`
- `sud-sudan.md` → `south-sudan.md`, `sudan-del-sud.md`

## File fuori ambito (non presenti come Stati nell'SVG, lasciati invariati)

`cabo-verde.md`, `cape-verde.md`, `capo-verde.md`, `comore.md`, `comoros.md`, `eswatini.md`, `lesotho.md`, `mauritius.md`, `sahara-occidentale.md`, `sao-tome-and-principe.md`, `sao-tome-e-principe.md`, `sao-tome-principe.md`, `seychelles.md`, `swaziland.md`, `western-sahara.md`

Queste schede (piccoli Stati insulari, Lesotho, Eswatini, Sahara Occidentale e relativi alias) non sono state verificate in questa esecuzione: mantengono la data di consultazione precedente e non vanno considerate aggiornate.

## Aggiornamento del sito

Copiare la cartella `sicurezza/` dello ZIP nel repository, poi `git add sicurezza`, `git commit -m "Aggiornamento sicurezza 2026-10-14"`, `git push`.
