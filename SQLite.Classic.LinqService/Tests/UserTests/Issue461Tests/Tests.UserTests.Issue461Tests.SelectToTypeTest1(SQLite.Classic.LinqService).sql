BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id_1],
	[t1].[Id]
FROM
	[Parent] [sep]
		LEFT JOIN (
			SELECT
				[l].[ParentID] + 1 as [Id],
				[l].[ParentID] + 1 as [Id_1]
			FROM
				[Child] [l]
			LIMIT 1
		) [t1] ON 1=1

