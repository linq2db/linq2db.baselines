﻿BeforeExecute
-- SqlCe (asynchronously)

SELECT
	CAST('2010-' + REPLICATE('0', 2 - LEN(CAST([t].[ID] AS NVarChar(2)))) + CAST([t].[ID] AS NVarChar(2)) + '-01 20:35:44.000' AS DateTime) as [c1]
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, CAST('2010-' + REPLICATE('0', 2 - LEN(CAST([t].[ID] AS NVarChar(2)))) + CAST([t].[ID] AS NVarChar(2)) + '-01 20:35:44.000' AS DateTime)) = 2010

