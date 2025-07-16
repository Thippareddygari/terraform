provider "local" {
  
}

resource "local_file" "foo" {
  content = "test"
  filename = "test"
}