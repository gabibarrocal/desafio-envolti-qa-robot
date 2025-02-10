#!/bin/bash

echo "🛠️  Removendo logs antigos..."
rm -rf results/

echo "🚀 Executando todos os testes do frontend..."
robot --outputdir results/ tests/frontend/

echo "✅ Testes finalizados! Acesse 'results/report.html' para ver o relatório."
