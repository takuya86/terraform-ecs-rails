resource "aws_ecr_repository" "rails" {
  name = "${local.name}-rails"

  image_scanning_configuration {
    scan_on_push = true
  }

  encryption_configuration {
    # 暗号化タイプの指定、AES256はデフォルトの設定
    encryption_type = "AES256"
  }
}