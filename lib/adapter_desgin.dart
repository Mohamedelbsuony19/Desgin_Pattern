// Old Printer Interface (Target)
abstract class OldPrinter {
  void print();
}

// New Printer Class (Adaptee)
class NewPrinter {
  void specialPrint() {
    print("This is the new fancy printing method.");
  }
}

// Adapter Class
class PrinterAdapter implements OldPrinter {
  final NewPrinter _newPrinter;

  PrinterAdapter(this._newPrinter);

  @override
  void print() {
    _newPrinter.specialPrint();
  }
}

void main() {
  NewPrinter newPrinter = NewPrinter();

  OldPrinter oldPrinter = PrinterAdapter(newPrinter);

  oldPrinter.print(); //  "This is the new fancy printing method."
}
