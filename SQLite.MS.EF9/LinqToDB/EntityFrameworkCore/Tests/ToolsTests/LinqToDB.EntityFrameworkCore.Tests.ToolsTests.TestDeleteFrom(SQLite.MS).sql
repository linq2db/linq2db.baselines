--  SQLite.MS SQLite (asynchronously)
DECLARE @take  -- Int32
SET     @take = 20

DELETE FROM
	(
		SELECT
			[e].[CustomerID] as [CustomerId]
		FROM
			[Customers] [e]
		WHERE
			[e].[IsDeleted] = 1
		LIMIT @take
	)
WHERE
	1 = 0



