﻿BeforeExecute
-- SqlServer.2016

SELECT
	[p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	CAST(Floor([p].[MoneyValue]) AS TinyInt) > 0

