-- SqlServer.2025.MS SqlServer.2025

SELECT TOP (1)
	[x].[Id],
	(
		SELECT TOP (1)
			[a_FirstUserWithMultipleParameters].[Id]
		FROM
			[User] [a_FirstUserWithMultipleParameters]
		WHERE
			[a_FirstUserWithMultipleParameters].[UserGroupId] = [x].[Id]
	)
FROM
	[UserGroup] [x]

