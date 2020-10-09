BeforeExecute
-- Northwind SqlServer.2017

SELECT 
	[c_1].[CategoryID], 
	[c_1].[CategoryName], 
	[c_1].[Description], 
	[c_1].[Picture]
FROM
	[Categories] [c_1]
		CROSS APPLY CONTAINSTABLE([Categories], *, N'seafood | bread', LANGUAGE N'English', 2) [t]
WHERE
	[c_1].[CategoryID] = [t].[KEY]
ORDER BY
	[t].[RANK] DESC

