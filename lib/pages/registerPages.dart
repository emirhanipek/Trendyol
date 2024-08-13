import 'package:flutter/material.dart';
import 'package:trendyol_login/controller/loginPagesController.dart';

class RegisterPages extends StatefulWidget {
  const RegisterPages({super.key});

  @override
  State<RegisterPages> createState() => _RegisterPagesState();
}

class _RegisterPagesState extends State<RegisterPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.orange,
        elevation: 0,
      ),
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
                      Padding(
                        padding: PagePadding.input_padding,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: SizedBox(
                                width: 15,
                                height: 1,
                                child: DecoratedBox(
                                    decoration:
                                        BoxDecoration(color: MyColors.grey)),
                              ),
                            ),
                            Text(
                              "  veya  ",
                              style: TextStyle(color: MyColors.grey),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: SizedBox(
                                width: 15,
                                height: 1,
                                child: DecoratedBox(
                                    decoration:
                                        BoxDecoration(color: MyColors.grey)),
                              ),
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
                                  padding: const EdgeInsets.all(12),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.apple),
                                      Text("Apple İle Giriş Yapın"),
                                    ],
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: MyColors.black),
                              ),
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
                                  padding: const EdgeInsets.all(12),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.apple),
                                      Text(
                                        "Diğer Giriş Seçenekleri",
                                        style: TextStyle(
                                          color: MyColors.black,
                                          decoration: TextDecoration.underline,
                                          decorationColor: MyColors.black,
                                          decorationThickness: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: MyColors.white),
                              ),
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
                              InputText.hint3,
                              style: TextStyle(color: MyColors.grey),
                            ),
                            Text(InputText.hint4,
                                style: TextStyle(color: MyColors.orange))
                          ])
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: ContainerRadius.borderRadius,
                      color: MyColors.white),
                  height: 350,
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
