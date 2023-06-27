import 'package:baymax/pages/darkhomepage.dart';
import 'package:baymax/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MedicineTracker extends StatefulWidget {
  @override
  _MedicineTrackerState createState() => _MedicineTrackerState();
}

class _MedicineTrackerState extends State<MedicineTracker> {
  List<Prescription> prescriptions = [];

  @override
  void initState() {
    super.initState();
    loadPrescriptions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        shadowColor: Color.fromRGBO(128, 45, 83, 1),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Home(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back),
          color: Color.fromRGBO(173, 22, 31, 1),
          iconSize: 37,
        ),
        centerTitle: true,
        title: Text(
          "Take your Meds",
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(173, 22, 31, 1),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 9.0),
            child: IconButton(
              icon: const Icon(
                Icons.account_circle,
                size: 38,
                color: Color.fromRGBO(173, 22, 31, 1),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DarkHome(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: prescriptions.length,
        itemBuilder: (context, index) {
          final prescription = prescriptions[index];
          return Dismissible(
            key: Key(prescription.id),
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
            onDismissed: (direction) {
              setState(() {
                prescriptions.removeAt(index);
                savePrescriptions();
              });
            },
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: Offset(0, 1),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Text(
                    prescription.time,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        prescription.medicineName,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        prescription.dosage,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Checkbox(
                    shape: CircleBorder(),
                    checkColor: Color.fromRGBO(173, 22, 31, 1),
                    activeColor: Color.fromRGBO(255, 255, 255, 1),
                    value: prescription.isChecked,
                    onChanged: (value) {
                      setState(() {
                        prescription.isChecked = value ?? false;
                        savePrescriptions();
                      });
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Container(
          height: 70,
          width: 70,
          child: FloatingActionButton(
            focusElevation: 5,
            elevation: 0,
            backgroundColor: Color.fromRGBO(173, 22, 31, 1),
            child: Icon(
              Icons.add,
              size: 35,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AddPrescriptionDialog(
                  onSave: (prescription) {
                    setState(() {
                      prescriptions.add(prescription);
                      savePrescriptions();
                    });
                  },
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void savePrescriptions() {
    // TODO: Implement saving of prescriptions to local storage
  }

  void loadPrescriptions() {
    // TODO: Implement loading of prescriptions from local storage
  }
}

class Prescription {
  final String id;
  final String time;
  final String medicineName;
  final String dosage;
  bool isChecked;

  Prescription({
    required this.id,
    required this.time,
    required this.medicineName,
    required this.dosage,
    this.isChecked = false,
  });
}

class AddPrescriptionDialog extends StatefulWidget {
  final Function(Prescription) onSave;

  AddPrescriptionDialog({required this.onSave});

  @override
  _AddPrescriptionDialogState createState() => _AddPrescriptionDialogState();
}

class _AddPrescriptionDialogState extends State<AddPrescriptionDialog> {
  final _formKey = GlobalKey<FormState>();
  final _timeController = TextEditingController();
  final _medicineNameController = TextEditingController();
  final _dosageController = TextEditingController();

  @override
  void dispose() {
    _timeController.dispose();
    _medicineNameController.dispose();
    _dosageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Add Prescription',
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(173, 22, 31, 1),
        ),
      ),
      content: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                cursorColor: Color.fromRGBO(173, 22, 31, 1),
                controller: _timeController,
                decoration: InputDecoration(
                  labelText: 'Time',
                ),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Please enter the time';
                  }
                  return null;
                },
              ),
              TextFormField(
                cursorColor: Color.fromRGBO(173, 22, 31, 1),
                controller: _medicineNameController,
                decoration: InputDecoration(
                  labelText: 'Medicine Name',
                ),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Please enter the medicine name';
                  }
                  return null;
                },
              ),
              TextFormField(
                cursorColor: Color.fromRGBO(173, 22, 31, 1),
                controller: _dosageController,
                decoration: InputDecoration(
                  labelText: 'Dosage',
                ),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Please enter the dosage';
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'Cancel',
            style: TextStyle(
              fontFamily: 'Roboto',
              color: Color.fromRGBO(173, 22, 31, 1),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(173, 22, 31, 1),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 35,
          width: 70,
          child: TextButton(
            onPressed: () {
              if (_formKey.currentState?.validate() ?? false) {
                final prescription = Prescription(
                  id: DateTime.now().millisecondsSinceEpoch.toString(),
                  time: _timeController.text,
                  medicineName: _medicineNameController.text,
                  dosage: _dosageController.text,
                );
                widget.onSave(prescription);
                Navigator.of(context).pop();
              }
            },
            child: Text(
              'Save',
              style: TextStyle(fontFamily: 'Roboto', color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
