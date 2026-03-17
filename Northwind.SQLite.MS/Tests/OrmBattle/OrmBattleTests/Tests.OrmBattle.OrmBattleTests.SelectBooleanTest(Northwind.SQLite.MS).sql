-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	CASE
		WHEN [o].[ShipRegion] = 'WA' THEN 1
		ELSE 0
	END
FROM
	[Orders] [o]

