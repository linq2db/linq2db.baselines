BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DELETE FROM
	[TableToInsert]
WHERE
	EXISTS(
		SELECT
			[r].[Id]
		FROM
			[TableToInsert] [t]
				INNER JOIN (
					SELECT NULL [Id] WHERE 1 = 0
					UNION ALL
					VALUES
						(2), (3)
					) [r] ON [t].[Id] = [r].[Id]
		WHERE
			[TableToInsert].[Id] = [t].[Id]
	)

