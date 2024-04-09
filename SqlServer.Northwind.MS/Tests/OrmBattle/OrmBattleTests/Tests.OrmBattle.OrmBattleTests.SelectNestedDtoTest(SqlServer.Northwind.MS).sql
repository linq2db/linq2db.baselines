﻿BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019
DECLARE @OrderDate DateTime2
SET     @OrderDate = DATETIME2FROMPARTS(1998, 1, 1, 0, 0, 0, 0, 7)

SELECT
	[r].[OrderID],
	[a_Customer].[CustomerID],
	[r].[OrderDate]
FROM
	[Orders] [r]
		INNER JOIN [Customers] [a_Customer] ON ([r].[CustomerID] = [a_Customer].[CustomerID] OR [r].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	[r].[OrderDate] > @OrderDate

