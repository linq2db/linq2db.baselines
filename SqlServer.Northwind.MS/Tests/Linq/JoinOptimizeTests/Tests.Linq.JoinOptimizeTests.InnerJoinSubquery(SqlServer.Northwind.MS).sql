﻿BeforeExecute
--  SqlServer.Northwind.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 10

SELECT
	[e_1].[OrderID],
	[e_1].[OrderDate],
	[e_1].[OrderID_1],
	[e_1].[OrderID_2]
FROM
	(
		SELECT TOP (@take)
			[e].[OrderID],
			[o1].[OrderDate],
			[o1].[OrderID] as [OrderID_1],
			[o1].[OrderID] as [OrderID_2]
		FROM
			[Order Details] [e]
				INNER JOIN [Orders] [o1] ON [e].[OrderID] = [o1].[OrderID]
		ORDER BY
			[e].[OrderID]
	) [e_1]
		INNER JOIN [Orders] [o1_1] ON [e_1].[OrderID] = [o1_1].[OrderID]

