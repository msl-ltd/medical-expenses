# Makefile内容表示
cat:
	$@ ./Makefile

# セットアップ
setup:
	make cli
	make ci dir=frontend
	make ci dir=backend
	make build

# Angular CLI取得
cli:
	npm un -g @angular/cli
	npm i -g @angular/cli

# Dockerイメージ作成
build:
	docker-compose -f .\.docker\docker-compose.yml build

# Docker起動
up:
	docker-compose -f .\.docker\docker-compose.yml $@ $(service)

# Docker終了
down:
	docker-compose -f .\.docker\docker-compose.yml $@ $(service)

# Docker停止
stop:
	docker-compose -f .\.docker\docker-compose.yml $@ $(service)

# アプリケーションライブラリ取得
ci:
	cd ./$(dir) && \
	npm $@

# アプリケーションライブラリアップデート確認
audit:
	cd ./$(dir) && \
	npm $@

# アプリケーションライブラリアップデート
update:
	cd ./$(dir) && \
	npm $@

# アプリケーションテスト
test:
	cd ./$(dir) && \
	npm run $@

# アプリケーションリント
lint:
	cd ./$(dir) && \
	npm run $@

# アプリケーション起動
start:
	-make stop service=$(dir)
	cd ./$(dir) && \
	npm $@
