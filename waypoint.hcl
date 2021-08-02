project = "devops-challenge"

app "devops-challenge" {

  build {
    use "pack" {}
    registry {
      use "docker" {
        image = "devops-challenge"
        tag   = "1.0.0"
        local = true
      }
    }
  }

  deploy {
    use "nomad" {
      datacenter = "dc1"
      namespace  = "default"
    }
  }

}