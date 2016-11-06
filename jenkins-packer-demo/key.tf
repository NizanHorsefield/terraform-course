resource "aws_key_pair" "mynewkeypair" {
  key_name = "mynewkeypair"
  public_key = "${file("${var.PATH_TO_PUBLIC_KEY}")}"
  lifecycle {
    ignore_changes = ["public_key"]
  }
}
