﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[FK],
	[a_ObjectB].[Id],
	[a_ObjectB].[FK],
	[a_ObjectC].[Id],
	[a_ObjectC].[FK]
FROM
	[EntityA] [t1]
		INNER JOIN [EntityB] [a_ObjectB] ON [t1].[FK] = [a_ObjectB].[Id]
		LEFT JOIN [EntityC] [a_ObjectC] ON [a_ObjectB].[FK] = [a_ObjectC].[Id]

