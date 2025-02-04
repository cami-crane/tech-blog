# CLI のバージョン確認
.PHONY: version
version:
	@echo "Zenn  CLI: v$$(npx zenn -v)" && echo "Qiita CLI: v$$(npx qiita version)"

# CLI のアップデート
.PHONY: update
update:
	npm install zenn-cli@latest && npm install @qiita/qiita-cli@latest

# GitHub リポジトリと Qiita の記事の同期
.PHONY: pull
pull:
	git pull && make npx qiita pull

# 新規記事の作成
.PHONY: new
new:
	npx zenn new:article && npx qiita new

# CLI のヘルプ表示
.PHONY: help
help:
	@echo "Zenn help =================================" && \
	npx zenn --help && \
	echo "\nQiita help ===============================\n" && \
	npx qiita help
