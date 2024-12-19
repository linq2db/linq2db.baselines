BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	CASE
		WHEN [o].[ShipRegion] = 'WA' THEN 1
		ELSE 0
	END
FROM
	[Orders] [o]

