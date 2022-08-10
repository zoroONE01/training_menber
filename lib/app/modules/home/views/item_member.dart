part of member_list;

class ItemMember extends StatelessWidget {
  const ItemMember({
    Key? key,
    required this.member,
    required this.index,
  }) : super(key: key);

  final Member member;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: CircleAvatar(
                radius: 26,
                backgroundImage: NetworkImage(member.avatar ??
                    'https://en.m.wikipedia.org/wiki/File:Sample_User_Icon.png'),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 3,
                        child: Text(
                          member.name ?? '',
                          maxLines: 1,
                          style: context.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: context.colors.onSecondaryContainer,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          '${member.age}歳',
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: context.colors.onInverseSurface,
                            fontSize: 10,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Text(
                          member.position ?? '',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: context.colors.onSurfaceVariant,
                            fontSize: 10,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          member.job ?? '',
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: context.colors.inversePrimary,
                            fontSize: 10,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    member.company ?? '',
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: context.colors.inversePrimary,
                      fontSize: 10,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Text(
                    member.address ?? '',
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: context.colors.onSurfaceVariant,
                      fontSize: 10,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 38,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              width: 0.3,
              color: context.colors.secondary,
            ),
          ),
          child: Center(
            child: Text(
              member.bio ?? '',
              maxLines: 2,
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colors.onSurfaceVariant,
                fontWeight: FontWeight.w700,
                fontSize: 10,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }
}
