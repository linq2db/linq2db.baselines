-- SqlServer.Northwind.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 5

SELECT DISTINCT
	[t1].[OrderDate]
FROM
	(
		SELECT TOP (@take)
			[o].[OrderDate]
		FROM
			[Orders] [o]
		ORDER BY
			[o].[OrderDate]
	) [t1]

