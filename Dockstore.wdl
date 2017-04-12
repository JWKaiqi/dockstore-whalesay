task hello {
  String name
  command {
    echo 'hello ${name}!'
  }
  output {
    File response = stdout()
  }

  runtime {
    docker: "debian:jessie"
    cpu: 1
    memory: "3.75 GB"
  }
}
workflow test {
  call hello

  output {
    hello.response
  }
}