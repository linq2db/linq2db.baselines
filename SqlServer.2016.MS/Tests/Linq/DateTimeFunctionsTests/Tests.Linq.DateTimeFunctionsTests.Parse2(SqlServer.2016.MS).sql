﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	CAST(CAST(DatePart(year, [d].[DateTimeValue]) AS NVarChar(11)) + N'-02-24 00:00:00' AS DateTime2)
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart(day, CAST(CAST(DatePart(year, [d].[DateTimeValue]) AS NVarChar(11)) + N'-02-24 00:00:00' AS DateTime2)) > 0

