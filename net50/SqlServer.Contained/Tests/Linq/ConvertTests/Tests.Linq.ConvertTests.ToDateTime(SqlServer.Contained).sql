﻿BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	Convert(DateTime2, Convert(VarChar(11), DatePart(year, [t].[DateTimeValue])) + N'-01-01 00:00:00', 120)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(day, Convert(DateTime2, Convert(VarChar(11), DatePart(year, [t].[DateTimeValue])) + N'-01-01 00:00:00', 120)) > 0

