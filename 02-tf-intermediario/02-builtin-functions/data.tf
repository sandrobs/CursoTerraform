data "archive_file" "json" {
  type = local.file_ext

  output_path = "${path.module}/files/${local.object_name}.${local.file_ext}"

  source {
    content = data.template.json.rendered
    filename = "${local.object_name}.json"
  }

}