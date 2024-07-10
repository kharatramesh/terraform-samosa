variable "akey" {
  type = string
}
variable "skey" {
  type = string
}
variable "location" {
  type = string
}

variable "portopen" {
  description = "adding ports"
  type        = map(any)
  default = {
    http   = { to_port = 80, from_port = 80, protocol = "tcp", description = "httpport" },
    ssh    = { to_port = 22, from_port = 22, protocol = "tcp", description = "sshport" },
    https  = { to_port = 443, from_port = 443, protocol = "tcp", description = "httpsport" },
    dns    = { to_port = 53, from_port = 53, protocol = "tcp", description = "dnsport" },
    db     = { to_port = 3306, from_port = 3306, protocol = "tcp", description = "dbport" }
    telnet = { to_port = 23, from_port = 23, protocol = "tcp", description = "telnetport" }
    vadapav = { to_port = 5432, from_port = 5432, protocol = "udp", description = "postgresport" }

  }
}

variable "egressportopen" {
  description = "adding egress ports"
  type        = map(any)
  default = {
    http   = { to_port = 80, from_port = 80, protocol = "tcp", description = "httpport" },
    ssh    = { to_port = 22, from_port = 22, protocol = "tcp", description = "sshport" },
    https  = { to_port = 443, from_port = 443, protocol = "tcp", description = "httpsport" },
    dns    = { to_port = 53, from_port = 53, protocol = "tcp", description = "dnsport" },
    db     = { to_port = 3306, from_port = 3306, protocol = "tcp", description = "dbport" }
    telnet = { to_port = 23, from_port = 23, protocol = "tcp", description = "telnetport" }
    vadapav = { to_port = 5432, from_port = 5432, protocol = "udp", description = "postgresport" }

  }
}
