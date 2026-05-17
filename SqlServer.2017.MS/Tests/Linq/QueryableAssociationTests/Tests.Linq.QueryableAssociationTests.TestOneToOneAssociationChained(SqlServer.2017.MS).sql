-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (1)
	[x].[Id],
	(
		SELECT TOP (1)
			(
				SELECT TOP (1)
					[a_FirstUsersWithLanguage_1].[Id]
				FROM
					[User] [a_FirstUsersWithLanguage_1]
				WHERE
					[a_FirstUsersWithLanguage_1].[UserGroupId] = [a_UserGroup].[Id] AND
					[a_FirstUsersWithLanguage_1].[LanguageId] = 2
			)
		FROM
			[User] [a_FirstUsersWithLanguage]
				LEFT JOIN [UserGroup] [a_UserGroup] ON [a_FirstUsersWithLanguage].[UserGroupId] = [a_UserGroup].[Id]
		WHERE
			[a_FirstUsersWithLanguage].[UserGroupId] = [x].[Id] AND
			[a_FirstUsersWithLanguage].[LanguageId] = 1
	)
FROM
	[UserGroup] [x]

