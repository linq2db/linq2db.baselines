﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	CAST([t].[MoneyValue] AS Float)
FROM
	[LinqDataTypes] [t]
WHERE
	ROUND(CAST([t].[MoneyValue] AS Float), 0) <> 0

