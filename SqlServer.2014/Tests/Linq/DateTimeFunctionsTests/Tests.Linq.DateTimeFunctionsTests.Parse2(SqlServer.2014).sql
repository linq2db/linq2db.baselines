﻿BeforeExecute
-- SqlServer.2014

SELECT
	CAST(CAST(DatePart(year, [d].[DateTimeValue]) AS VarChar(11)) + N'-02-24 00:00:00' AS DateTime2)
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart(day, CAST(CAST(DatePart(year, [d].[DateTimeValue]) AS VarChar(11)) + N'-02-24 00:00:00' AS DateTime2)) > 0

