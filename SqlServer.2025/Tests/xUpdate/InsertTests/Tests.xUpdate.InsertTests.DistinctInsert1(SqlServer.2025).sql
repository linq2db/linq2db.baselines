﻿BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2025 SqlServer.2022

DELETE [c_1]
FROM
	[LinqDataTypes] [c_1]
WHERE
	[c_1].[ID] > 1000

BeforeExecute
-- SqlServer.2025 SqlServer.2022

INSERT INTO [LinqDataTypes]
(
	[ID],
	[GuidValue],
	[BoolValue]
)
SELECT
	CAST(Floor([t2].[Value_1] + 1001) AS Int),
	NewID(),
	1
FROM
	(
		SELECT DISTINCT
			Floor(CAST([t1].[ID] AS Float) / 3) as [Value_1]
		FROM
			[LinqDataTypes] [t1]
	) [t2]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

DELETE [c_1]
FROM
	[LinqDataTypes] [c_1]
WHERE
	[c_1].[ID] > 1000

