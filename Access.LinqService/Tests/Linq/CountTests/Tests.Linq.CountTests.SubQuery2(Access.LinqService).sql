BeforeExecute
-- Access AccessOleDb

SELECT
	[p].[Value1],
	[t2].[Count_1],
	[t3].[Count_1]
FROM
	([Parent] [p]
		LEFT JOIN (
			SELECT
				Count(*) as [Count_1],
				[t1].[ParentID]
			FROM
				[Child] [t1]
			GROUP BY
				[t1].[ParentID]
		) [t2] ON ([p].[ParentID] = [t2].[ParentID]))
		LEFT JOIN (
			SELECT
				Count(*) as [Count_1],
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
			GROUP BY
				[c_1].[ParentID]
		) [t3] ON ([p].[ParentID] = [t3].[ParentID] AND [t3].[ParentID] = [p].[ParentID])
WHERE
	[p].[ParentID] <> 5

