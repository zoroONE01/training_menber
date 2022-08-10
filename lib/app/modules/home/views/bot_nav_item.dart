part of bot_nav_bar;

class BotNavItem extends StatelessWidget {
  final String label;
  final String iconPath;

  const BotNavItem({
    Key? key,
    required this.label,
    required this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Column(children: [
            const Spacer(
              flex: 2,
            ),
            Flexible(
              flex: 3,
              child: SvgPicture.asset(iconPath),
            ),
            Flexible(
              flex: 3,
              child: Center(
                child: Text(
                  label,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontSize: 6,
                        color: context.colors.onTertiaryContainer,
                        fontWeight: FontWeight.w700,
                      ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
          ]),
        ),
      ),
    );
  }
}
