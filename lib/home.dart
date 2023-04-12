import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jawshan_kabir_flutter1/sentences/arabic.dart';
import 'package:jawshan_kabir_flutter1/sentences/persian.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.search),
        ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text(
                "جوشن کبیر",
                style: GoogleFonts.cairo(),
              ),
              centerTitle: true,
              leading: Center(
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_vert))),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: Arabic.strings.length,
                (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(14.0),
                    onTap: () {},
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(),
                          borderRadius: BorderRadius.circular(14.0)),
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          Arabic.strings[index],
                          style: GoogleFonts.scheherazadeNew(
                              fontWeight: FontWeight.bold),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      subtitle: Text(
                        Persian.strings[index],
                        style: GoogleFonts.vazirmatn(),
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ),
                ),
              ),
            )
            /*ListView.builder(
              itemCount: Arabic.strings.length,
              itemBuilder: (context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {},
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(),
                          borderRadius: BorderRadius.circular(7.0)),
                      leading: Text("$index"),
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SelectableText(
                          Arabic.strings[index],
                          style: GoogleFonts.tajawal(fontWeight: FontWeight.bold),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      subtitle: SelectableText(
                        Persian.strings[index],
                        style: GoogleFonts.vazirmatn(),
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ),
                );
              }),*/
          ],
        ),
      ),
    );
  }
}
