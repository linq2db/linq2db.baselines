﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	RTRIM(REPLACE(CAST([p].[MoneyValue] AS NVarChar(31)), N',', N'.'), N'0.')
FROM
	[LinqDataTypes] [p]
WHERE
	LEN(CAST([p].[MoneyValue] AS NVarChar(31)) + N'.') > 1

