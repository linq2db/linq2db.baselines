BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[Count_1]
FROM
	[Parent] [p2]
		LEFT JOIN (
			SELECT
				Count(*) as [Count_1],
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
			GROUP BY
				[c_1].[ParentID]
		) [t1] ON ([t1].[ParentID] + 1 < [p2].[ParentID] + 2 AND [t1].[ParentID] + 1 < [p2].[ParentID] + 2 AND [p2].[ParentID] = [t1].[ParentID])
WHERE
	[p2].[ParentID] > -2 AND [p2].[ParentID] > -1

