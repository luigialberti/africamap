#!/bin/bash

# Avvia un piccolo server web locale nella cartella in cui si trova questo file.
# Uso:
# 1. Metti questo file nella stessa cartella di:
#    - mappa_africa_interattiva_markdown_resizable.html
#    - Africa-map.svg
#    - cartella stati/
# 2. Fai doppio click su questo file oppure lancialo da Terminale.

cd "$(dirname "$0")" || exit 1

PORT=8000
HTML_FILE="index.html"

# Prova python3, poi python.
if command -v python3 >/dev/null 2>&1; then
  PYTHON_CMD="python3"
elif command -v python >/dev/null 2>&1; then
  PYTHON_CMD="python"
else
  echo "Errore: Python non è installato o non è nel PATH."
  echo "Installa Python oppure usa un server locale alternativo."
  read -r -p "Premi Invio per chiudere..."
  exit 1
fi

echo "Cartella corrente: $(pwd)"
echo "Avvio server locale su http://localhost:${PORT}/"
echo "Pagina: http://localhost:${PORT}/${HTML_FILE}"
echo ""
echo "Per fermare il server, chiudi questa finestra oppure premi Ctrl+C."
echo ""

# Apre automaticamente la pagina nel browser predefinito.
open "http://localhost:${PORT}/${HTML_FILE}"

# Avvia il server statico.
$PYTHON_CMD -m http.server "$PORT"
