
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/about.dart';

void main() {
  testWidgets('AboutPage should display all content correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(
      home: AboutPage(),
    ));

    // Verify the title is displayed.
    expect(find.text('About Us'), findsOneWidget);

    // Verify the "Our Mission" section is displayed.
    expect(find.text('Our Mission'), findsOneWidget);
    expect(
      find.text(
        'To be the commercial heart of the student experience, providing quality, ethical, and affordable products that support and enhance student life. We are committed to sustainability, community engagement, and creating a vibrant campus hub where every student feels welcome.',
      ),
      findsOneWidget,
    );

    // Verify the "Our Story" section is displayed.
    expect(find.text('Our Story'), findsOneWidget);
    expect(
      find.text(
        'Founded in 2023, the Union Shop was created with a simple idea: to make campus life better. It started as a small pop-up, and thanks to the amazing support from students like you, it has grown into the central retail space it is today. We are more than just a store; we are a part of the student journey, evolving every year to meet your needs.',
      ),
      findsOneWidget,
    );

    // Verify the "Meet the Team" placeholder is there.
    expect(find.text('Meet the Team'), findsOneWidget);
    expect(find.text('Images and bios of the team coming soon...'), findsOneWidget);

    // Verify the app bar's back button is present.
    expect(find.byIcon(Icons.arrow_back), findsOneWidget);
  });
}
