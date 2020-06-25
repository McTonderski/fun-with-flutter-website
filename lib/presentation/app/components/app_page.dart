import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/page/page_bloc.dart';
import '../../../application/page/page_state.dart';
import '../../pages/about/about_page.dart';
import '../../pages/blog/blog_page.dart';
import '../../pages/home/home_page.dart';
import '../../pages/packages/packages_page.dart';
import '../../widgets/error/error_widget.dart';

class AppPage extends StatelessWidget {

  const AppPage();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageBloc, PageState>(
      builder: (BuildContext context, PageState state) {
        switch (state) {
          case PageState.home:
            return HomePage();
            break;
          case PageState.blog:
            return FilteredBlogPage();
            break;
          case PageState.packages:
            return PackagesPage();
            break;
          case PageState.about:
            return AboutPage();
            break;
          default:
            return const CustomError(
              errorMessage:
                  'Whoops, you found something that has not yet been implemented',
            );
            break;
        }
      },
    );
  }
}