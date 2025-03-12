import 'package:speed_test_dart/classes/classes.dart';
import 'package:speed_test_dart/classes/odometer.dart';
import 'package:xml/xml.dart';

class Settings {
  Settings(this.client, this.times, this.download, this.upload,
      this.serverConfig, this.servers, this.odometer);

  Settings.fromXMLElement(XmlElement? element)
      : client = Client.fromXMLElement(element?.getElement('client')),
        times = Times.fromXMLElement(element?.getElement('times')),
        download = Download.fromXMLElement(element?.getElement('download')),
        upload = Upload.fromXMLElement(element?.getElement('upload')),
        odometer = Odometer.fromXMLElement(element?.getElement('odometer')),
        serverConfig =
            ServerConfig.fromXMLElement(element?.getElement('server-config')),
        servers = <Server>[];
  Client client;

  Times times;

  Download download;

  Upload upload;

  ServerConfig serverConfig;

  List<Server> servers;

  Odometer odometer;
}
