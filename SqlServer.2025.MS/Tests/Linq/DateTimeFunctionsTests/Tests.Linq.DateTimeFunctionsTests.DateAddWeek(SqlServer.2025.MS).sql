﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	CAST(DateAdd(week, -1, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

