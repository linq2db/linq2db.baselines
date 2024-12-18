BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	CASE
		WHEN [o].[ShipRegion] = 'WA' AND [o].[ShipRegion] IS NOT NULL
			THEN 1
		ELSE 0
	END
FROM
	[Orders] [o]

