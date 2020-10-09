BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[p].[ParentID], 
	[t2].[Count_1]
FROM
	[Parent] [p]
		LEFT JOIN ( 
			SELECT 
				Count(*) as [Count_1], 
				[t1].[ParentID]
			FROM
				[Child] [t1]
			GROUP BY
				[t1].[ParentID]
		) [t2] ON ([p].[ParentID] = [t2].[ParentID])

