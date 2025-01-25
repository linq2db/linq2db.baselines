﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[Value],
	[s].[Id],
	[a_Association1_1].[Id],
	[a_Association1_1].[Value],
	[a_Association1_1].[ParentId],
	[a_Association1_1].[Id] IS NOT NULL AND [a_Association2].[Id] IS NOT NULL,
	[a_Association2].[Id],
	[a_Association2].[Value],
	[a_Association2].[ParentId]
FROM
	[SuperClass] [t]
		LEFT JOIN [Subclass1] [s] ON [s].[ParentId] = [t].[Id]
		LEFT JOIN [Subclass1] [a_Association1] ON [t].[Id] = [a_Association1].[ParentId]
		LEFT JOIN [Subclass2] [s_1] ON [s_1].[ParentId] = [a_Association1].[Id]
		LEFT JOIN [Subclass1] [a_Association1_1] ON [t].[Id] = [a_Association1_1].[ParentId]
		LEFT JOIN [Subclass2] [a_Association2] ON [a_Association1_1].[Id] = [a_Association2].[ParentId]

