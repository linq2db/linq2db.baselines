﻿BeforeExecute
-- Northwind SqlServer.2019
DECLARE @OrderDate DateTime2
SET     @OrderDate = '1997-11-14T00:00:00.0000000'

SELECT
	[order_1].[OrderID]
FROM
	[Orders] [order_1]
WHERE
	[order_1].[OrderDate] = @OrderDate

BeforeExecute
-- Northwind SqlServer.2019
DECLARE @OrderDate DateTime2
SET     @OrderDate = '1997-11-14T00:00:00.0000000'

SELECT
	[order_1].[OrderID]
FROM
	[Orders] [order_1]
WHERE
	@OrderDate = [order_1].[OrderDate]

