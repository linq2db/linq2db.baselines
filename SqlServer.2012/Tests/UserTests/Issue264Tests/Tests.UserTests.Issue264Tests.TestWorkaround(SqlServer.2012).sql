﻿BeforeExecute
-- SqlServer.2012

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			(
				SELECT
					MONTH([t1].[DateTimeValue]) as [month_1],
					YEAR([t1].[DateTimeValue]) as [year_1]
				FROM
					[LinqDataTypes] [t1]
			) [t2]
		GROUP BY
			[t2].[month_1],
			[t2].[year_1]
	) [t3]

BeforeExecute
-- SqlServer.2012

SELECT
	[t2].[month_1],
	[t2].[year_1]
FROM
	(
		SELECT
			MONTH([t1].[DateTimeValue]) as [month_1],
			YEAR([t1].[DateTimeValue]) as [year_1]
		FROM
			[LinqDataTypes] [t1]
	) [t2]
GROUP BY
	[t2].[month_1],
	[t2].[year_1]

