﻿BeforeExecute
-- SqlCe

SELECT
	[t].[Id],
	[t].[Value] as [Value_1]
FROM
	[TableToInsert] [t]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT 2 AS [Id], 'Janet' AS [Value], 2 AS [Id0], 'Janet' AS [Value0]
				UNION ALL
				SELECT 3 AS [Id], 'Doe' AS [Value], 3 AS [Id0], 'Doe' AS [Value0]) [r]
		WHERE
			[t].[Id] = [r].[Id] AND ([t].[Value] = [r].[Value] OR [t].[Value] IS NULL AND [r].[Value] IS NULL)
	)

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Value] as [Value_1]
FROM
	[TableToInsert] [t1]

