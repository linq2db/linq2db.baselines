BeforeExecute
-- Northwind SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT 
	[t1].[CategoryName]
FROM
	[Products] [p]
		OUTER APPLY ( 
			SELECT TOP (@take) 
				[zrp].[CategoryName]
			FROM
				[Categories] [zrp]
		) [t1]

