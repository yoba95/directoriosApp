import 'package:app_directorios/httpProtocol/status.dart';
import 'package:app_directorios/views/Widgets/text_message.dart';
import 'package:connectivity/connectivity.dart';
import 'package:http/http.dart';

import '../common/constant.dart';

typedef VoidCallBackParam(String param);

class HttpExecute {
  String endPoint;
  var parameters;

  HttpExecute({this.endPoint = "", this.parameters});

  post() async {
    return await checkConnectivity(executeMethod, "post");
  }

  checkConnectivity(VoidCallBackParam voidCallBackParam, String type) async {
    var connectivityResult = await Connectivity().checkConnectivity();
    return (connectivityResult == ConnectivityResult.wifi ||
            connectivityResult == ConnectivityResult.mobile)
        ? await voidCallBackParam(type)
        : Status(
            type: CONNECTION_DISABLE,
            statusWidget: TextMessage("Sin conexión"));
  }

  executeMethod(String type) async {
    Response? reponse;
    switch (type) {
      case "post":
        reponse =
            await Client().post(uri, headers: header, body: this.parameters);
        break;
    }
    return validateResponse(reponse);
  }

  validateResponse(Response? response) {
    return (response!.statusCode >= 200 && response.statusCode < 300)
        ? response.body
        : Status(
            type: SERVER_ERROR,
            response: response,
            statusWidget: TextMessage(
                "Error en el servidor" + response.statusCode.toString()));
  }

  get uri {
    return Uri.parse(URL + this.endPoint);
  }

  get header {
    return {"content-type": "application/json"};
  }
}
/*
"content-type": "application/x-www-form-urlencoded"
*/