﻿BeforeExecute
--  SqlServer.2008

SELECT
	[p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	CAST(Floor([p].[MoneyValue]) AS Decimal) > 0

