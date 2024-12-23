# terraform/production/rabbitmq.tf
resource "kubernetes_deployment" "rabbitmq" {
  metadata {
    name = "rabbitmq-deployment"
    labels = {
      app = "rabbitmq"
    }
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "rabbitmq"
      }
    }

    template {
      metadata {
        labels = {
          app = "rabbitmq"
        }
      }

      spec {
        container {
          name  = "rabbitmq"
          image = "rabbitmq:management"
          ports {
            container_port = 5672
          }
          ports {
            container_port = 15672
          }
          env {
            name  = "RABBITMQ_DEFAULT_USER"
            value = "user"
          }
          env {
            name  = "RABBITMQ_DEFAULT_PASS"
            value = "password"
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "rabbitmq" {
  metadata {
    name = "rabbitmq-service"
  }

  spec {
    selector = {
      app = "rabbitmq"
    }
    port {
      port        = 5672
      target_port = 5672
    }
    port {
      port        = 15672
      target_port = 15672
    }
  }
}
