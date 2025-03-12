import 'package:xml/xml.dart';

class Odometer {
  int start;
  int rate;

  Odometer(this.start, this.rate);
  Odometer.fromXMLElement(XmlElement? element)
      : start = int.parse(element!.getAttribute('start')!),
        rate = int.parse(element.getAttribute('rate')!);
}
