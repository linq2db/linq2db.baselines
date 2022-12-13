BeforeExecute
-- Access AccessOleDb

SELECT
	[t].[ParentID],
	[t].[count_1]
FROM
	(
		SELECT
			[t2].[count_1],
			[p].[ParentID]
		FROM
			[Parent] [p]
				LEFT JOIN (
					SELECT
						Count(*) as [count_1],
						[t1].[ParentID]
					FROM
						[Child] [t1]
					GROUP BY
						[t1].[ParentID]
				) [t2] ON ([p].[ParentID] = [t2].[ParentID])
	) [t]
WHERE
	[t].[count_1] > 0

