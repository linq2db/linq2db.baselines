﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[e].[ID],
	[p].[SmallIntValue]
FROM
	(
		SELECT DISTINCT
			[t1].[ID],
			[t1].[SmallIntValue]
		FROM
			[LinqDataTypes] [t1]
	) [e]
		LEFT JOIN (
			SELECT DISTINCT
				[t2].[ID],
				[t2].[SmallIntValue]
			FROM
				[LinqDataTypes] [t2]
		) [p] ON [p].[ID] = [e].[ID]

