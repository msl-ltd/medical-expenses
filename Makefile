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
install:
	cd ./$(dir) && \
	npm ci

# ライブラリアップデート確認
audit:
	cd ./$(dir) && \
	npm audit

# ライブラリアップデート
update:
	cd ./$(dir) && \
	npm update

# テスト
test:
	cd ./$(dir) && \
	npm run test

# リント
lint:
	cd ./$(dir) && \
	npm run lint

# 起動
start:
	-make stop service=$(dir)
	cd ./$(dir) && \
	npm start
