resource "aws_s3_bucket" "bucket"{
  count = length(var.name1)
  bucket = "user-${var.name1[count.index]}"
}
locals  {
  names=["adhs","shsgd","ewywey"]
}

resource "null_resource" "names" {
  for_each = toset(local.names)
  triggers = {
    name = each.value
  }
}