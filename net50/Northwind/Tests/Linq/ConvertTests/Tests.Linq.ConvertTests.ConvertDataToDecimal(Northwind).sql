﻿BeforeExecute
-- Northwind SqlServer.2019

SELECT
	([od].[UnitPrice] * [od].[Quantity]) * (1 - [od].[Discount])
FROM
	[Order Details] [od]

BeforeExecute
-- Northwind SqlServer.2019

SELECT
	[od].[UnitPrice],
	[od].[Quantity],
	[od].[Discount]
FROM
	[Order Details] [od]

