﻿BeforeExecute
-- SqlServer.2008

SELECT
	Convert(DateTime2, Convert(VarChar(11), DatePart(year, [t].[DateTimeValue])) + N'-02-24 00:00:00', 120)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(day, Convert(DateTime2, Convert(VarChar(11), DatePart(year, [t].[DateTimeValue])) + N'-02-24 00:00:00', 120)) > 0

