﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[fact_1].[Id],
	[t1].[Id],
	[t1].[FactId],
	[t1].[Name]
FROM
	[Tag] [t1]
		FULL JOIN [Fact] [fact_1] ON [t1].[FactId] = [fact_1].[Id]
WHERE
	[fact_1].[Id] > 3 OR [t1].[FactId] > 3

