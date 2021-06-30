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

# フロントエンド ライブラリ取得
f-install:
	cd ./frontend && \
	npm ci

# フロントエンド ライブラリアップデート確認
f-audit:
	cd ./frontend && \
	npm audit

# フロントエンド ライブラリアップデート
f-update:
	cd ./frontend && \
	npm update

# フロントエンドテスト
f-test:
	cd ./frontend && \
	npm run test

# フロントエンドリント
f-lint:
	cd ./frontend && \
	npm run lint

# フロントエンド起動
f-start:
	-make stop service=frontend
	cd ./frontend && \
	npm start
