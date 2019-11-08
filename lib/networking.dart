import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutter/foundation.dart';

void getData(){
  get('http://localhost/blablabla');
  // ver em properties / launchSettings.json
}

/*
    class ApiRoutes
    {
         Root = "api";
         Version = "v1";
         Base = Root + "/" + Version;
       class Presencas
        {
             ObterTodas = Base + "/presencas";
             Obter = Base + "/presencas/{id}";
             Deletar = Base + "/presencas/{id}";
             Atualizar = Base + "/presencas/{id}";
             Criar = Base + "/presencas";
        }
       class Identity
        {
             Login = Base + "/identity/login";
             Register = Base + "/identity/register";
             Refresh = Base + "/identity/refresh";
* */