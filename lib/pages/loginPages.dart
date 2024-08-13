import 'package:flutter/material.dart';
import 'package:trendyol_login/controller/loginPagesController.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: PagePadding.logo_padding,
                      child: Image.asset(
                        ImgUrl.trendyolLogo,
                      ),
                    ),
                  ],
                ),
                color: MyColors.orange,
                height: 350,
                width: MediaQuery.of(context).size.width,
              ),
              Padding(
                padding: PagePadding.all,
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      input(),
                      SizedBox(
                        height: 20,
                      ),
                      input2(),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: PagePadding.input_padding,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Şifremi Unuttum",
                              style: TextStyle(color: MyColors.orange),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: PagePadding.input_padding,
                        child: Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text("Giriş Yap"),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: MyColors.orange,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          "Diğer Giriş Seçenekleri",
                          style: TextStyle(color: MyColors.grey),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: PagePadding.input_padding,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Row(
                                  children: [
                                    Icon(Icons.apple),
                                    Text("Apple İle Giriş Yapın"),
                                  ],
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: MyColors.black),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(
                                ImgUrl.gmailLogo,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(ImgUrl.facebookLogo),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              InputText.hint1,
                              style: TextStyle(color: MyColors.grey),
                            ),
                            Text(InputText.hint2,
                                style: TextStyle(color: MyColors.orange))
                          ])
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: ContainerRadius.borderRadius,
                      color: MyColors.white),
                  height: 420,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class input extends StatelessWidget {
  const input({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PagePadding.input_padding,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          prefixIcon: Icon(
            Icons.mail,
            color: MyColors.orange,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: MyColors.orange,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: MyColors.input_bg,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          hintText: InputText.emailHint,
        ),
      ),
    );
  }
}

class input2 extends StatelessWidget {
  const input2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PagePadding.input_padding,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          prefixIcon: Icon(
            Icons.password,
            color: MyColors.orange,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: MyColors.orange,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: MyColors.input_bg,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          hintText: InputText.passwordHint,
        ),
      ),
    );
  }
}
