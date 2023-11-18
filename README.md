# Terraform GCP 環境構築手順書

このドキュメントでは、Google Cloud Platform (GCP) 上でTerraformを使用して環境を構築するための手順を説明します。

## 前提条件
- Google Cloud Platform のアカウントが必要です。
- Terraformがインストールされていることが前提です。

## 手順

### 1. GCPのサービスアカウントとキーの設定
- GCPコンソールでサービスアカウントを作成します。
- 必要な権限をサービスアカウントに付与します。
- サービスアカウントキー（JSON形式）を生成し、安全な場所に保存します。

### 2. 環境変数の設定
以下の環境変数を設定します（Bashの例）：

```bash
export TF_VAR_gcp_credentials_file="path/to/your/service-account-key.json"
export TF_VAR_gcp_project_id="your-gcp-project-id"
export TF_VAR_gcp_region="your-gcp-region"  # 例：asia-northeast1（東京）
```

### 3. Terraformの初期化
プロジェクトディレクトリで以下のコマンドを実行してTerraformを初期化します：

```bash
terraform init
```

### 4. Terraformの計画と適用
以下のコマンドでTerraformの計画を確認し、適用します：

```bash
terraform plan
terraform apply
```

### 5. リソースの破棄（必要に応じて）
プロジェクトからTerraformによって作成されたリソースを削除する場合は、以下のコマンドを実行します：

```bash
terraform destroy
```

## 注意事項
- サービスアカウントキーは安全に管理してください。
- Terraformを使用する際は、コストとセキュリティを常に意識してください。

この手順書に従って、GCP上でTerraformを使用して環境を構築することができます。サービスアカウントのキーは特に安全に管理し、Terraformの運用時にはコストとセキュリティに注意を払うことが重要です。