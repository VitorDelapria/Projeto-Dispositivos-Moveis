import 'package:flutter/material.dart';

class CheckboxButton extends StatefulWidget {
  // Callback para capturar o estado do checkbox
  final ValueChanged<bool?> onChanged;
  final String title;
  final bool initialValue;

  const CheckboxButton({
    Key? key,
    required this.onChanged,
    required this.title,
    this.initialValue = false,
  }) : super(key: key);

  @override
  State<CheckboxButton> createState() => _CheckboxButtonState();
}

class _CheckboxButtonState extends State<CheckboxButton> {
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
    isChecked = widget.initialValue; // Inicializar com o valor inicial
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start, // Alinha à esquerda
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value ?? false; // Atualiza o estado do checkbox
              });
              widget.onChanged(value); // Executa o callback
            },
          ),
          Text(
            widget.title,
            style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
