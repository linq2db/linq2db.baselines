﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			Floor(Log(CAST([p].[MoneyValue] AS Float)) / 0.69314718055994529) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0.10000000000000001

