import 'package:flutter/material.dart';

// AlertDialog idea adapted from the Flutter docs and Material Design's
// "confirmation dialog": api.flutter.dev/flutter/material/AlertDialog-class.html
void main() => runApp(const MaterialApp(home: RingtoneDemo()));

class RingtoneDemo extends StatefulWidget {
  const RingtoneDemo({super.key});

  @override
  State<RingtoneDemo> createState() => _RingtoneDemoState();
}

class _RingtoneDemoState extends State<RingtoneDemo> {
  final ringtones = ['None', 'Callisto', 'Europa', 'Ganymede'];
  String saved = 'None'; 

  Future<void> _pickRingtone() async {
    String selected = saved; 

    final result = await showDialog<String>(
      context: context,
      builder: (context) => StatefulBuilder(
        
        builder: (context, setDialogState) => AlertDialog(
        
          icon: const Icon(Icons.music_note),
          backgroundColor: Colors.teal.shade50,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          title: const Text('Phone ringtone'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (final r in ringtones)
                ListTile(
                  leading: Icon(r == selected
                      ? Icons.radio_button_checked
                      : Icons.radio_button_unchecked),
                  title: Text(r),
                  onTap: () => setDialogState(() => selected = r),
                ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), // cancel: no result
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, selected), // save
              child: const Text('OK'),
            ),
          ],
        ),
      ),
    );

    // Only save if the user pressed OK
    if (result != null) setState(() => saved = result);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListTile(
        title: const Text('Phone ringtone'),
        subtitle: Text(saved),
        onTap: _pickRingtone,
      ),
    );
  }
}