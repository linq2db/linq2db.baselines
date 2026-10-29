-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 4

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e_1].[Value1] ORDER BY Coalesce([e_1].[Value1], 0), [e_1].[ParentID] DESC) as [RowNumber],
			[e_1].[Value1],
			[e_1].[ParentID]
		FROM
			(
				SELECT
					[e].[Value1],
					[e].[ParentID]
				FROM
					[Parent] [e]
				ORDER BY
					Coalesce([e].[Value1], 0),
					[e].[ParentID] DESC
				LIMIT @take
			) [e_1]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	Coalesce([t1].[Value1], 0),
	[t1].[ParentID] DESC

-- SQLite.Classic SQLite
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

