﻿BeforeExecute
-- SqlServer.2005

SELECT
	REPLACE(CAST([p].[MoneyValue] AS NVarChar(31)), N',', N'.')
FROM
	[LinqDataTypes] [p]
WHERE
	LEN(CAST([p].[MoneyValue] AS NVarChar(31)) + N'.') > 1

