BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 5

SELECT
	[g_3].[Key_1],
	[g_3].[COUNT_1]
FROM
	(
		SELECT
			[g_2].[Key_1],
			COUNT(*) as [COUNT_1]
		FROM
			(
				SELECT
					Date(CURRENT_TIMESTAMP) as [Key_1]
				FROM
					[Parent] [g_1]
						INNER JOIN [Child] [s] ON [g_1].[ParentID] = [s].[ParentID]
				WHERE
					[g_1].[Value1] > 0
			) [g_2]
		GROUP BY
			[g_2].[Key_1]
	) [g_3]
LIMIT @take

