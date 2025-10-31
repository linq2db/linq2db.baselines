-- SqlServer.2022.MS SqlServer.2022

SELECT TOP (1)
	[x].[Id],
	[t1].[Id],
	[t1].[Name]
FROM
	[UserGroup] [x]
		OUTER APPLY (
			SELECT TOP (1)
				[a_FirstUsersWithLanguage].[Id],
				[a_Language].[Name]
			FROM
				[User] [a_FirstUsersWithLanguage]
					LEFT JOIN [Language] [a_Language] ON [a_FirstUsersWithLanguage].[LanguageId] = [a_Language].[Id]
			WHERE
				[a_FirstUsersWithLanguage].[UserGroupId] = [x].[Id] AND
				[a_FirstUsersWithLanguage].[LanguageId] = 1
		) [t1]

