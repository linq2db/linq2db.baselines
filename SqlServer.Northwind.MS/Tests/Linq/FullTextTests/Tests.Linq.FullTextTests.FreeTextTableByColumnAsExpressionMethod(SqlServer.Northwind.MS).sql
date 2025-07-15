BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[c_1].[CategoryID],
	[c_1].[CategoryName],
	[c_1].[Description],
	[c_1].[Picture]
FROM
	[Categories] [c_1]
		INNER JOIN FREETEXTTABLE([Categories], ([Description]), N'sweetest candy bread and dry meat') [t] ON [c_1].[CategoryID] = [t].[KEY]
ORDER BY
	[t].[RANK] DESC

