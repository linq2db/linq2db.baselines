BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @cond NVarChar(4000) -- String
SET     @cond = N'%En%'
DECLARE @cond_1 NVarChar(4000) -- String
SET     @cond_1 = N'%Lis%'

SELECT TOP (1)
	[x].[Id],
	(
		SELECT
			COUNT(*)
		FROM
			[User] [x_1]
				LEFT JOIN [Language] [a_Language] ON [x_1].[LanguageId] = [a_Language].[Id]
		WHERE
			[x_1].[UserGroupId] = [x].[Id] AND [a_Language].[Name] LIKE @cond ESCAPE N'~'
	),
	(
		SELECT
			COUNT(*)
		FROM
			[User] [x_2]
				LEFT JOIN [Language] [a_Language_1] ON [x_2].[LanguageId] = [a_Language_1].[Id]
		WHERE
			[x_2].[UserGroupId] = [x].[Id] AND [a_Language_1].[Name] LIKE @cond_1 ESCAPE N'~'
	)
FROM
	[UserGroup] [x]

