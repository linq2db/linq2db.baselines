-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (1)
	[x].[Id],
	(
		SELECT
			COUNT(*)
		FROM
			[User] [x_1]
		WHERE
			[x_1].[UserGroupId] = [x].[Id] AND [x_1].[LanguageId] = 1
	),
	(
		SELECT
			COUNT(*)
		FROM
			[User] [x_2]
		WHERE
			[x_2].[UserGroupId] = [x].[Id] AND [x_2].[LanguageId] = 2
	)
FROM
	[UserGroup] [x]

