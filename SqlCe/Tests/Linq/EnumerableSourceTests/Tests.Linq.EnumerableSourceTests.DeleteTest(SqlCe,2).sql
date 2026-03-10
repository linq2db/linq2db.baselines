-- SqlCe

DELETE FROM
	[TableToInsert]
WHERE
	EXISTS(
		SELECT
			1
		FROM
			[TableToInsert] [t]
				INNER JOIN (
					SELECT 3 AS [Id]
					UNION ALL
					SELECT 4 AS [Id]) [r] ON [t].[Id] = [r].[Id]
		WHERE
			[TableToInsert].[Id] = [t].[Id]
	)

