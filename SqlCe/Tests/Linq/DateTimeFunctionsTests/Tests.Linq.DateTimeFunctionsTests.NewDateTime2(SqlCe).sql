﻿BeforeExecute
--  SqlCe

SELECT
	CAST(REPLICATE('0', 4 - LEN(CAST(DatePart(year, [p].[DateTimeValue]) AS NVarChar(4)))) + CAST(DatePart(year, [p].[DateTimeValue]) AS NVarChar(4)) + '-10-01' AS DateTime) as [c1]
FROM
	[LinqDataTypes] [p]

