﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	CAST(Floor([p].[MoneyValue]) AS Decimal) > 0

