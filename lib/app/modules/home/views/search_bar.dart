part of home_view;

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.secondaryContainer,
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 11),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: context.colors.onSecondaryContainer,
                size: 20,
              ),
              onPressed: () {},
            ),
            Text(lbSearch,
                style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                    color: context.colors.onSecondaryContainer)
                // ?.copyWith(fontWeight: FontWeight.w600),
                ),
          ]),
    );
  }
}
