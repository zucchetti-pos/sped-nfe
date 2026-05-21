test:
	@echo "🚀 Rodando testes..."
	@echo "⏰ $(shell date '+%H:%M:%S') - Início"
	@start_time=$$(date +%s); \
	docker exec -i sped-nfe-webserver sh -c 'composer test'; \
	end_time=$$(date +%s); \
	duration=$$((end_time - start_time)); \
	echo "✅ Testes concluídos!"; \
	echo "⏱️ Tempo total: $$duration segundos"; \
	echo "⏰ $(shell date '+%H:%M:%S') - Fim"
