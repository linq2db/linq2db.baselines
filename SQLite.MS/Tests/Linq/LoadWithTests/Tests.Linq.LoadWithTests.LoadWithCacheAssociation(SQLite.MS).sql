-- SQLite.MS SQLite

SELECT
	[m2].[Id],
	[m2].[Value],
	[m2].[MainItemId],
	[a_MainItem].[Id],
	[a_MainItem].[Value]
FROM
	[MainItem2] [m2]
		LEFT JOIN [MainItem] [a_MainItem] ON [m2].[MainItemId] = [a_MainItem].[Id]
WHERE
	[a_MainItem].[Id] IS NOT NULL AND (
		SELECT
			COUNT(*)
		FROM
			[SubItem1] [a_SubItems1]
		WHERE
			[a_MainItem].[Id] = [a_SubItems1].[ParentId]
	) > 1

