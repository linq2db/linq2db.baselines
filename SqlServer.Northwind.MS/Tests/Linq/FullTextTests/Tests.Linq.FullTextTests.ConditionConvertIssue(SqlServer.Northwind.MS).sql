-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[tables_1].[CategoryID]
FROM
	[Categories] [tables_1]
		LEFT JOIN [Categories] [item_1] ON [item_1].[CategoryID] = [tables_1].[CategoryID]
WHERE
	CONTAINS(([tables_1].*), N'"test"') OR CONTAINS(([item_1].*), N'"test"')

