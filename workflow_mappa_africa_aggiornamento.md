# Workflow riutilizzabile — Mappa interattiva dell'Africa (UniPD)

> **Come usarlo in una nuova chat:** allega questo file e l'archivio ZIP più recente del progetto (idealmente `africa_md_completo_stati_sicurezza.zip`), oltre a `Africa-map.svg` e, se desideri controllare la compatibilità, all'HTML della mappa. Poi scrivi: **«Esegui il workflow descritto nel file allegato in modalità SICUREZZA, aggiornando le schede con le informazioni ufficiali attuali»**. Non serve incollare nuovamente tutto il testo.
>
> **Importante:** una nuova chat potrebbe non avere accesso ai file della chat precedente. Ricarica i file necessari, oppure fornisci un repository GitHub pubblico accessibile.

## 1. Ruolo e scopo

Agisci come assistente di ricerca e manutenzione di una **mappa SVG interattiva dell'Africa**, destinata a supportare la valutazione di collaborazioni universitarie, missioni, mobilità e iniziative di cooperazione.

Lo scopo principale di questa esecuzione è **aggiornare le schede Markdown di sicurezza di tutti gli Stati rappresentati nella mappa**, usando anzitutto le schede ufficiali del Ministero degli Affari Esteri italiano su **[ViaggiareSicuri](https://www.viaggiaresicuri.it/find-country/)**, e consegnare file aggiornati compatibili con l'applicazione web già esistente.

Non inventare aggiornamenti, date, livelli di rischio, divieti o raccomandazioni. Non usare le vecchie schede come prova dell'attualità di un rischio. Ogni nuova affermazione deve essere verificabile.

## 2. File di ingresso e struttura attesa

```text
progetto/
├── Africa-map.svg
├── index.html                      # oppure mappa_africa_interattiva_sicurezza_fisic_completo.html
├── stati/
│   ├── tanzania.md
│   ├── mozambico.md
│   └── ...
└── sicurezza/
    ├── tanzania.md
    ├── mozambico.md
    └── ...
```

Se ricevi uno ZIP che contiene queste cartelle, aprilo e usalo come **base**, senza sostituire indiscriminatamente i testi già curati. Conserva gli altri file non interessati dall'aggiornamento.

L'HTML carica le schede con `fetch('stati/<slug>.md')` e `fetch('sicurezza/<slug>.md')`. Le sezioni di allerta sono delimitate da marcatori HTML all'interno del Markdown; il codice le estrae e mostra un riquadro rosso in alto. Il resto della scheda di sicurezza appare nel tab **Sicurezza**. Non modificare questi marcatori.

## 3. Ambito geografico e nomi file

**Fonte primaria dell'elenco degli Stati: il file `Africa-map.svg` allegato.** Ispeziona gli elementi `path` nel layer Stati, convenzionalmente `id="layer10"`, e recupera i nomi da `inkscape:label` (o da un attributo equivalente significativo). Se l'SVG contiene nomi mancanti, ambigui, ripetuti o non interpretabili, segnala l'anomalia invece di inventare corrispondenze.

Confronta questo elenco con i file esistenti nelle cartelle `stati/` e `sicurezza/`. Evita duplicazioni tra alias: ad esempio `sud-africa.md` e `sudafrica.md`, oppure varianti italiane/inglesi come `kenia`/`kenya`, `mozambico`/`mozambique`, `costa-d-avorio`/`cote-d-ivoire`. Riutilizza i nomi già funzionanti nell'HTML e, dove necessario, mantieni file alias equivalenti. Fai attenzione a **Repubblica del Congo / Repubblica Democratica del Congo** e ad altri omonimi.

Se l'SVG non è disponibile, chiedilo. Solo previo accordo puoi usare come ripiego un elenco standard di Stati africani, precisando che non è stato ricavato dall'SVG.

## 4. Modalità di esecuzione

- **SICUREZZA** (predefinita): aggiorna soltanto `sicurezza/*.md`, preservando i file `stati/*.md`.
- **COMPLETA**: aggiorna anche `stati/*.md`, con fonti affidabili su demografia, economia, lingue, sistema universitario, università, corsi e aree di ingegneria elettrica/energetica; controlla il grado di dettaglio preesistente e non impoverirlo.
- **VERIFICA**: controlla le schede correnti, indica dati da verificare e modifiche consigliate, senza riscriverle.
- **SOLO CAMBIAMENTI**: aggiorna esclusivamente i Paesi per i quali la verifica online individua un cambiamento sostanziale rispetto ai file di partenza, e consegna anche un registro degli invariati.

Se non è specificata alcuna modalità, esegui **SICUREZZA**.

## 5. Ricerca e verifica delle informazioni di sicurezza

Per **ogni Paese**, procedi così:

1. Identifica correttamente Stato, eventuali alias e codice ISO Alpha-3; verifica che il link alla scheda ViaggiareSicuri sia riferito al Paese giusto. La struttura URL può essere `https://www.viaggiaresicuri.it/find-country/country/XXX`, ma **non presumere** che un URL costruito sia valido: aprilo e verificalo.
2. Consulta la scheda attuale su **ViaggiareSicuri**. Esamina, quando presenti, **Avvisi in evidenza, Sicurezza, Situazione sanitaria, Mobilità/ingressi e contatti utili**. Cerca anche aggiornamenti, comunicazioni e avvisi con data.
3. Riporta soltanto informazioni effettivamente trovate nella pagina ufficiale: aree da evitare, instabilità politica, conflitti, criminalità, terrorismo, manifestazioni, condizioni delle frontiere, rischi sanitari, calamità, trasporti e restrizioni d'ingresso se pertinenti. **Distingui rischio generale da avvisi per aree specifiche.**
4. Se ViaggiareSicuri è irraggiungibile, contiene informazioni non verificabili o non presenta una sezione ricercata, segnala il limite; puoi integrare con fonti istituzionali pertinenti (Farnesina, ambasciata, OMS, autorità del Paese), **ma etichetta chiaramente la fonte alternativa**. Non attribuire al Ministero un'informazione proveniente da terzi.
5. Rileva, quando disponibili, la **data dell'ultimo aggiornamento ufficiale** e la **data della tua consultazione**: sono cose diverse. Non inventare una data di aggiornamento se non è espressa dalla fonte.
6. Confronta il contenuto verificato con il file Markdown preesistente: elimina o modifica avvisi scaduti o non più supportati, conserva i fatti ancora validi, aggiungi le novità e registra le differenze. Non usare una vecchia allerta solo perché compare nel file.
7. Evidenzia le situazioni molto critiche con un linguaggio **fedele al testo istituzionale** (per esempio «si sconsigliano i viaggi» soltanto se questa è effettivamente la raccomandazione della fonte). Non applicare un sistema di classificazione numerica/colorata come se fosse ufficiale, salvo sia dichiarato esplicitamente che è un'indicazione editoriale della mappa.

**Priorità:** accuratezza e tracciabilità rispetto alla quantità di dettagli. Se non puoi controllare un Paese, lascialo identificato come **non verificato** e non presentare la scheda come aggiornata.

## 6. Formato obbligatorio di ogni `sicurezza/<slug>.md`

Mantieni una struttura coerente con le schede attuali. Esempio di **modello**, non descrizione reale della Tanzania:

```markdown
# Sicurezza - NOME STATO

<!-- ALERT -->
**Attenzione**: [solo un avviso corrente e verificato che meriti risalto; indicare eventualmente la zona interessata].
<!-- /ALERT -->

## Sintesi operativa

| Voce | Indicazione |
|---|---|
| Paese | NOME STATO |
| Codice ViaggiareSicuri | `XXX` |
| Livello sintetico per la mappa | [etichetta editoriale prudente, se utile] |
| Fonte principale | [ViaggiareSicuri - NOME STATO](URL_VERIFICATO) |
| Data aggiornamento fonte | [data esplicita oppure "Non indicata/verificabile"] |
| Data consultazione | AAAA-MM-GG |

## Punti di attenzione

- [informazione controllata 1]
- [informazione controllata 2]

## Descrizione estesa

[Breve descrizione ragionata, con indicazioni geografiche, condizioni, limitazioni e contesto necessari; evitare affermazioni generiche non verificabili.]

## Fonti e aggiornamenti

- [Fonte ufficiale consultata](URL) — consultata il AAAA-MM-GG; [data aggiornamento riportata, se disponibile].
- [Eventuale fonte istituzionale aggiuntiva](URL) — [motivo].

## Nota d'uso

Scheda informativa di sintesi, non sostitutiva di ViaggiareSicuri. Prima di viaggi, missioni, mobilità studentesca o attività sul campo, controllare la scheda ufficiale più recente e le indicazioni dell'Ateneo.
```

**Regola cruciale sugli alert:** il blocco tra `<!-- ALERT -->` e `<!-- /ALERT -->` **deve apparire soltanto quando c'è un avviso attuale, specifico e documentato che giustifichi il riquadro rosso**. Altrimenti **ometti entrambi i marcatori e tutto il blocco**. L'assenza di alert nel riquadro non significa che il Paese sia privo di rischi: la scheda estesa deve comunque riportare le cautele ordinarie e un collegamento alla fonte.

**Formato Markdown supportato:** titoli `#`/`##`/`###`, paragrafi, elenchi con `-`, tabelle con `|`, link Markdown, grassetto. Evita elementi HTML complessi, note a piè di pagina, componenti interattivi o strutture che richiedano un renderer Markdown avanzato; l'HTML del progetto usa un parser semplice. Conserva le URL integrali e accessibili.

## 7. Aggiornamento facoltativo dei file `stati/*.md`

Questa sezione si applica **solo in modalità COMPLETA**. Mantieni per ciascuno Stato le sezioni già presenti e il dettaglio eventualmente disponibile su:

- sintesi: nome ufficiale, capitale, principali città, superficie, popolazione, PIL e anno dei dati;
- lingue parlate e lingua dell'istruzione superiore, evitando percentuali non comparabili;
- sistema di istruzione e istruzione superiore, accreditamento e struttura dei cicli;
- principali università, con link ufficiali;
- corsi/facoltà di ingegneria, in particolare **elettrica, energetica, elettrotecnica e tecnologie per l'energia**, con Bachelor/Master/PhD e lingua dei corsi se verificabile;
- fonti primarie e anno di validità.

Non sostituire contenuti verificati e ricchi con schede generiche. Quando un dato non può essere aggiornato in modo attendibile, mantieni il dato precedente *marcato con il suo anno* oppure segnala «da verificare», senza farlo passare per attuale.

## 8. Controlli di compatibilità con la mappa web

Prima della consegna:

1. Conferma che i file `sicurezza/*.md` corrispondano ai nomi di lookup dell'HTML (`getCandidateSlugs`, mapping alias) e agli Stati SVG (`inkscape:label`), segnalando o correggendo le discrepanze.
2. Mantieni inalterati i delimitatori `<!-- ALERT -->` / `<!-- /ALERT -->`, interpretati da `splitAlertSection()` nella pagina.
3. Controlla che ogni file sia UTF-8, che tabelle e link siano validi e che non ci siano contenuti duplicati o placeholder residui.
4. Non modificare SVG o HTML se non esplicitamente richiesto; se occorrono nuovi alias o interventi per rendere raggiungibile una scheda, proponi un **file HTML modificato separato** e spiega le modifiche.
5. Se è disponibile un ambiente di esecuzione, esegui controlli automatici: elenco Paesi, copertura cartelle, congruenza degli alias, link delle fonti (quando verificabili), assenza di blocchi ALERT malformati.

## 9. Output richiesto

Fornisci i seguenti risultati, possibilmente come file scaricabili:

- **`africa_sicurezza_aggiornata_AAAA-MM-GG.zip`**: cartella `sicurezza/` aggiornata (e `stati/` invariata se si richiede un archivio completo).
- **`africa_schede_modificate_AAAA-MM-GG.zip`**: solo i file creati o modificati in questa esecuzione, se utile.
- **`report_aggiornamento_AAAA-MM-GG.md`**: elenco Paesi controllati; per ogni Paese **aggiornato / invariato / non verificato**, principali modifiche e relativa fonte, data di consultazione, eventuali URL non accessibili e casi che richiedono revisione manuale.
- Una **breve sintesi finale** con numero di Paesi analizzati, file aggiornati, alert aggiunti/modificati/rimossi e verifiche ancora necessarie.

Preserva i nomi file e la struttura delle directory già usati, così il sito GitHub Pages può essere aggiornato copiando semplicemente i Markdown nel repository e facendo `git add`, `git commit` e `git push`.

## 10. Regole operative essenziali

- Effettua **una nuova consultazione web a ogni esecuzione**: la sicurezza è variabile nel tempo.
- Non presentare contenuti precedenti come «aggiornati» se non hai potuto verificarli online.
- Non inventare citazioni, avvisi, percentuali, date di aggiornamento o URL.
- Non omettere Paesi senza dichiararlo nel report.
- Non cancellare il lavoro manuale presente nelle schede senza giustificare l'intervento.
- Quando la pagina istituzionale distingue **«viaggi sconsigliati»**, **«aree sconsigliate»** e **«prestare particolare attenzione»**, rispetta rigorosamente la distinzione.
- Evidenzia cosa è riportato dalla fonte e cosa è soltanto una sintesi/valutazione editoriale dell'applicazione.
- Se le fonti sono inaccessibili o la sessione non ha strumenti adeguati, comunica la limitazione e produci un report parziale, **non** schede apparentemente verificate.

## 11. Comando breve da inviare assieme ai file

> **Esegui in modalità SICUREZZA il workflow descritto in `workflow_mappa_africa_aggiornamento.md`. Usa l'SVG per individuare gli Stati, le cartelle attuali come base e consulta nuovamente le schede ufficiali ViaggiareSicuri per verificare e aggiornare rischi e avvisi. Conserva il formato `<!-- ALERT -->`, non modificare `stati/`, prepara gli ZIP aggiornati e un report Paese per Paese con le fonti e le date di verifica. Non inventare dati per Paesi non verificabili.**

