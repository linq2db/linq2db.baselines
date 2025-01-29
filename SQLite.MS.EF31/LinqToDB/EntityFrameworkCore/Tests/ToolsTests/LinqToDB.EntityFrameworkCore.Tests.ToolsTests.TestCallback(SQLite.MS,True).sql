--  SQLite.MS SQLite

DELETE FROM
	[Products]
WHERE
	NOT [Products].[IsDeleted] AND
	(
		SELECT
			COUNT(*)
		FROM
			[Order Details] [a_OrderDetails]
		WHERE
			[Products].[ProductID] = [a_OrderDetails].[ProductID]
	) > 0 AND
	[Products].[ProductName] LIKE 'a%' ESCAPE '~' AND
	[Products].[ProductName] = 'a'



