﻿BeforeExecute
-- SqlServer.2019

SELECT
	[d].[c1]
FROM
	(
		SELECT
			Convert(DateTime2, Convert(VarChar(11), DatePart(year, [t].[DateTimeValue])) + N'-02-24 00:00:00') as [c1]
		FROM
			[LinqDataTypes] [t]
	) [d]
WHERE
	DatePart(day, [d].[c1]) > 0

