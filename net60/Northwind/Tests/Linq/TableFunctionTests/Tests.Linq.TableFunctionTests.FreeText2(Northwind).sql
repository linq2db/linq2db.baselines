BeforeExecute
-- Northwind SqlServer.2017

SELECT
	[t].[CategoryID],
	[t].[CategoryName],
	[t].[Description],
	[t].[Picture]
FROM
	[Categories] [t]
WHERE
	FREETEXT((*), N'sweet')

