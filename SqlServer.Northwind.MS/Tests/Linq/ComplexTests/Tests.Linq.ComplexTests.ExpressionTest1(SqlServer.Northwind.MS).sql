﻿BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	Count(*)
FROM
	[Customers] [x]
WHERE
	([x].[Country] = N'UK' OR [x].[Country] = N'France')

