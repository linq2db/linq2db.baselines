BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Count_1]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				Count(*) as [Count_1],
				[p1].[ParentID]
			FROM
				[Parent] [p1]
			GROUP BY
				[p1].[ParentID]
		) [t1] ON ([t1].[ParentID] = [p].[ParentID])

