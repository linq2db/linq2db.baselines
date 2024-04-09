BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[o].[OrderID]
FROM
	[Orders] [o]
ORDER BY
	CASE
		WHEN [o].[Freight] > 0 AND [o].[ShippedDate] IS NOT NULL
			THEN 1
		ELSE 0
	END,
	[o].[OrderID]

