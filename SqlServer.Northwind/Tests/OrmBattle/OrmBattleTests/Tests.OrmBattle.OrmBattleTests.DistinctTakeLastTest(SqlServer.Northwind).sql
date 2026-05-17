-- SqlServer.Northwind SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 5

SELECT DISTINCT TOP (@take)
	[o].[OrderDate]
FROM
	[Orders] [o]
ORDER BY
	[o].[OrderDate]

