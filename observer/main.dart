import 'paper.dart';

main() {
  Publisher publisher = new Publisher();

  Reader fedor = new Reader("Еламан");
  Reader emelya = new Reader("Заур");
  Reader ruslan = new Reader("Руслан");

  publisher.onPub!.listen(fedor.read);
  var emelyaSub = publisher.onPub!.listen(emelya.read);
  publisher.onPub!.listen(ruslan.read);

  Paper one = new Paper(1, "Первая газета нашего издательства");
  publisher.publish(one);

  emelyaSub.cancel();

  Paper two = new Paper(2, "Казахстан");
  publisher.publish(two);
}
