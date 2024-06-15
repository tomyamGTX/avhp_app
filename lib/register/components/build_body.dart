import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import '../../widget/form.dart';
import '../../widget/utils.dart';

class buildBody extends StatelessWidget {
  const buildBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Your Phone Number",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(
          height: 16,
        ),
        CountryCodePicker(
          builder: (CountryCode? codes) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Text(
                              "Country/Region",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.blue.shade900),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          children: [
                            Text(
                                "${Utils.countryCodeToEmoji(codes!.code!)} ${codes.name!}",
                                style: Theme.of(context).textTheme.bodyLarge),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          backgroundColor: Colors.blue.shade100,
          onChanged: print,
          // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
          initialSelection: 'MY',
          favorite: ['+60', 'MY'],
          // optional. Shows only country name and flag
          showCountryOnly: false,
          // optional. Shows only country name and flag when popup is closed.
          showOnlyCountryWhenClosed: false,
          // optional. aligns the flag and the Text left
          alignLeft: true,
          showDropDownButton: true,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: OutlineBorderForm(
            value: '',
            helperText: 'Enter Phone Number',
            keyType: TextInputType.phone,
          ),
        ),
      ],
    );
  }
}
