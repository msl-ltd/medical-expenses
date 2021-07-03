# イメージ作成
build:
	docker-compose -f .\.docker\docker-compose.yml build

# Docker起動
up:
	docker-compose -f .\.docker\docker-compose.yml up $(service)

# Docker終了
down:
	docker-compose -f .\.docker\docker-compose.yml down $(service)

# Docker停止
stop:
	docker-compose -f .\.docker\docker-compose.yml stop $(service)

# ライブラリ取得
ci:
	cd ./$(dir) && \
	npm $@

# ライブラリアップデート確認
audit:
	cd ./$(dir) && \
	npm $@

# ライブラリアップデート
update:
	cd ./$(dir) && \
	npm $@

# テスト
test:
	cd ./$(dir) && \
	npm run $@

# リント
lint:
	cd ./$(dir) && \
	npm run $@

# 起動
start:
	-make stop service=$(dir)
	cd ./$(dir) && \
	npm $@
