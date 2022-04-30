BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t].[ParentID],
	[t2].[Count_1]
FROM
	[Parent] [t]
		LEFT JOIN (
			SELECT
				Count(*) as [Count_1],
				[t1].[ParentID]
			FROM
				[Child] [t1]
			GROUP BY
				[t1].[ParentID]
		) [t2] ON ([t].[ParentID] = [t2].[ParentID])

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t].[ParentID],
	[t2].[Count_1]
FROM
	[Parent] [t]
		LEFT JOIN (
			SELECT
				Count(*) as [Count_1],
				[t1].[ParentID]
			FROM
				[Child] [t1]
			GROUP BY
				[t1].[ParentID]
		) [t2] ON ([t].[ParentID] = [t2].[ParentID])

