-- SQLite.MS SQLite

SELECT
	[t].[Id],
	[t].[Value],
	[s].[Id],
	[a_Association1_1].[Id],
	[a_Association1_1].[Value],
	[a_Association1_1].[ParentId],
	[a_Association2].[Id],
	[a_Association2].[Value],
	[a_Association2].[ParentId]
FROM
	[SuperClass] [t]
		LEFT JOIN [Subclass1] [s] ON [s].[ParentId] = [t].[Id]
		LEFT JOIN [Subclass1] [a_Association1] ON [t].[Id] = [a_Association1].[ParentId]
		LEFT JOIN [Subclass2] [s_1] ON [s_1].[ParentId] = [a_Association1].[Id] OR [s_1].[ParentId] IS NULL AND [a_Association1].[Id] IS NULL
		LEFT JOIN [Subclass1] [a_Association1_1] ON [t].[Id] = [a_Association1_1].[ParentId]
		LEFT JOIN [Subclass2] [a_Association2] ON [a_Association1_1].[Id] = [a_Association2].[ParentId] OR [a_Association1_1].[Id] IS NULL AND [a_Association2].[ParentId] IS NULL

