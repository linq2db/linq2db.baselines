﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t].[Id],
	[t].[Name],
	Stuff((
		SELECT
			N',' + [c_1].[Name]
		FROM
			[Category] [c_1]
		WHERE
			[c_1].[Id] = [tc].[CategoryId]
	), 1, 1, N'')
FROM
	[Task] [t]
		LEFT JOIN [TaskCategory] [tc] ON [t].[Id] = [tc].[TaskId]

