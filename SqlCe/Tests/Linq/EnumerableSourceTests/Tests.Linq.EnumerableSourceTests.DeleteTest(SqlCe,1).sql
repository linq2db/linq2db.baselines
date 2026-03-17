-- SqlCe

DELETE FROM
	[TableToInsert]
WHERE
	EXISTS(
		SELECT
			[r].[Id]
		FROM
			[TableToInsert] [t]
				INNER JOIN (
					SELECT 2 AS [Id]
					UNION ALL
					SELECT 3 AS [Id]) [r] ON [t].[Id] = [r].[Id]
		WHERE
			[TableToInsert].[Id] = [t].[Id]
	)

