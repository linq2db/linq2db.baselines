-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	CASE
		WHEN [p].[Discontinued] = 0 THEN N'NULL'
		WHEN [p].[Discontinued] = 1 THEN [p].[ProductName]
		ELSE NULL
	END
FROM
	[Products] [p]

