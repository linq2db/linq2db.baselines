BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[Count_1]
FROM
	(
		SELECT
			[p2].[ParentID] + 2 as [ID],
			[p2].[ParentID]
		FROM
			[Parent] [p2]
		WHERE
			[p2].[ParentID] > -1
	) [p1]
		LEFT JOIN (
			SELECT
				Count(*) as [Count_1],
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
			GROUP BY
				[c_1].[ParentID]
		) [t1] ON ([t1].[ParentID] + 1 < [p1].[ID] AND [t1].[ParentID] + 1 < [p1].[ID] AND [p1].[ParentID] = [t1].[ParentID])
WHERE
	[p1].[ID] > 0

