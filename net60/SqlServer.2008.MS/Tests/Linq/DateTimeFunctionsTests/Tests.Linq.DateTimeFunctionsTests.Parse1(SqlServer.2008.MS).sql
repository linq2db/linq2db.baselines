﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[d].[c1]
FROM
	(
		SELECT
			[t].[DateTimeValue] as [c1]
		FROM
			[LinqDataTypes] [t]
	) [d]
WHERE
	DatePart(day, [d].[c1]) > 0

