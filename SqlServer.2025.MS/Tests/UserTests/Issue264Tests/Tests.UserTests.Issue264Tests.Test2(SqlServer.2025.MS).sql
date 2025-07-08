﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

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

