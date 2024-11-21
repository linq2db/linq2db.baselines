--  SQLite.MS SQLite

DELETE FROM
	[Products]
WHERE
	([Products].[IsDeleted] = 0 OR [Products].[IsDeleted] = 0) AND
	(
		SELECT
			COUNT(*)
		FROM
			[Order Details] [e]
		WHERE
			([e].[IsDeleted] = 0 OR [e].[IsDeleted] = 0) AND [Products].[ProductID] = [e].[ProductID]
	) > 0 AND
	[Products].[ProductName] LIKE 'a%' ESCAPE '~' AND
	[Products].[ProductName] = 'a'



