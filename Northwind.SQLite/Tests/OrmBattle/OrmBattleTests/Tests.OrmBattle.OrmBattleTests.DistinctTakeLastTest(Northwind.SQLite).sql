-- Northwind.SQLite SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 5

SELECT DISTINCT
	[o].[OrderDate]
FROM
	[Orders] [o]
ORDER BY
	[o].[OrderDate]
LIMIT @take

