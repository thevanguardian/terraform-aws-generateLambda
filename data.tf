terraform {
  required_version = "~> 1.3"
}

data "archive_file" "generatedLambdaFunction" {
  type        = "zip"
  output_path = "${path.root}/.terraform/${var.lambdaName}.zip"
  source_dir  = var.lambdaSourcePath
}
