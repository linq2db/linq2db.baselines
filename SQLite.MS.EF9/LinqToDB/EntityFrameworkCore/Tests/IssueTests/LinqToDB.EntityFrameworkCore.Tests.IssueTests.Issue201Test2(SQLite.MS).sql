--  SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Parents] [x]
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			[Children] [y]
		WHERE
			[y].[IsActive] AND [x].[Id] = [y].[ParentId]
	)



