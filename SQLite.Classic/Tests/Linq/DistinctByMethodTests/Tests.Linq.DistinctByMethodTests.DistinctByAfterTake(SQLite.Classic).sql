-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 3

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e_1].[Value1] ORDER BY [e_1].[ParentID] DESC) as [RowNumber],
			[e_1].[ParentID],
			[e_1].[Value1]
		FROM
			(
				SELECT
					[e].[Value1],
					[e].[ParentID]
				FROM
					[Parent] [e]
				ORDER BY
					[e].[ParentID] DESC
				LIMIT @take
			) [e_1]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[ParentID] DESC

-- SQLite.Classic SQLite
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

