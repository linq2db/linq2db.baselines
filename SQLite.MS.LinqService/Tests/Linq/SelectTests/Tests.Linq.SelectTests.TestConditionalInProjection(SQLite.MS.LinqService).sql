BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t2].[Id],
	[c_1].[Id],
	[c_1].[Value],
	CASE
		WHEN [c_1].[Value] <> 'Value 1' OR [c_1].[Value] IS NULL
			THEN 1
		ELSE 0
	END,
	[t1].[Id],
	[t1].[Value_1]
FROM
	[MainEntityObject] [t2]
		LEFT JOIN [ChildEntityObject] [c_1] ON [c_1].[Id] = [t2].[Id]
		LEFT JOIN (
			SELECT
				[sc].[Id],
				[sc].[Value] as [Value_1]
			FROM
				[ChildEntityObject] [sc]
			LIMIT 1
		) [t1] ON 1=1
ORDER BY
	[t2].[Id]

