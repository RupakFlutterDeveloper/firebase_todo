import 'package:flutter/material.dart';
import 'package:signinwith_todo/uihelper/custome_field.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomTextField(
          hintText: "Search Todo",
          suffixIcon: Icons.search,
        ),
        leading: Builder(
          builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu)),
        ),
      ),
      drawer: Drawer(
        width: 340,
        backgroundColor: const Color.fromARGB(255, 233, 226, 226),
        elevation: 34,
        child: Column(
          children: [
            Stack(
              children: [
                // Cross sign logic
                Positioned(
                  top: 10,
                  right: 12,
                  child: IconButton(
                    onPressed: () {
                      Scaffold.of(context).closeDrawer(); // Drawer close karega
                    },
                    icon: const Icon(Icons.close),
                  ),
                ),
                DrawerHeader(
                  child: Center(
                    child: Column(
                      children: [
                        Stack(children: [
                          SizedBox(
                            height: 80,
                            width: 80,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1719937206498-b31844530a96?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                              ),
                            ),
                          ),
                          Positioned(
                            right: 6,
                            bottom: 0,
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black45),
                              child: IconButton(
                                iconSize: 20,
                                color: Colors.blue,
                                onPressed: () {},
                                icon: const Icon(Icons.edit),
                              ),
                            ),
                          )
                        ]),
                        const Text("Rupak Sahoo"),
                        const Text("rupaksahoo9@gmail.com"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text("My Profile"),
                    onTap: () {
                      // Handle My Profile tap
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text("Settings"),
                    onTap: () {
                      // Handle Settings tap
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.photo),
                    title: const Text("Uploaded File"),
                    onTap: () {
                      // Handle Settings tap
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.logout),
                    title: const Text("Logout"),
                    onTap: () {
                      // Handle Logout tap
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.password),
                    title: const Text("Reset Password"),
                    onTap: () {
                      // Handle Reset Password tap
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.delete),
                    title: const Text("Delete Account"),
                    onTap: () {
                      // Handle Delete Account tap
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("my first title"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: Colors.blue,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,
                    )),
              ],
            ),
          );
        },
      ), // Main content here
    );
  }
}
