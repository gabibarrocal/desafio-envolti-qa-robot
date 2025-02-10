#!/bin/bash
echo "🛠️  Removendo logs antigos..."
rm -rf results/

echo "🚀 Executando todos os testes..."
robot --outputdir results/ tests/

echo "✅ Testes finalizados! Acesse 'results/report.html' para ver o relatório."
