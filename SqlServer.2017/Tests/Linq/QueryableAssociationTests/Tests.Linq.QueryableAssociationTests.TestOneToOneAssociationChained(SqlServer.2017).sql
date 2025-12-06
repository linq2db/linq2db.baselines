-- SqlServer.2017

SELECT TOP (1)
	[x].[Id],
	[t2].[Id]
FROM
	[UserGroup] [x]
		OUTER APPLY (
			SELECT TOP (1)
				[t1].[Id]
			FROM
				[User] [a_FirstUsersWithLanguage_1]
					LEFT JOIN [UserGroup] [a_UserGroup]
						OUTER APPLY (
							SELECT TOP (1)
								[a_FirstUsersWithLanguage].[Id]
							FROM
								[User] [a_FirstUsersWithLanguage]
							WHERE
								[a_FirstUsersWithLanguage].[UserGroupId] = [a_UserGroup].[Id] AND
								[a_FirstUsersWithLanguage].[LanguageId] = 2
						) [t1]
					ON [a_FirstUsersWithLanguage_1].[UserGroupId] = [a_UserGroup].[Id]
			WHERE
				[a_FirstUsersWithLanguage_1].[UserGroupId] = [x].[Id] AND
				[a_FirstUsersWithLanguage_1].[LanguageId] = 1
		) [t2]

