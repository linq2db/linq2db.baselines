BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[t3].[cnt]
FROM
	( 
		SELECT TOP 5 
			[t1].[ParentID]
		FROM
			[Parent] [t1]
	) [p]
		LEFT JOIN ( 
			SELECT 
				Count(*) as [cnt], 
				[t2].[ParentID]
			FROM
				[Child] [t2]
			GROUP BY
				[t2].[ParentID]
		) [t3] ON ([p].[ParentID] = [t3].[ParentID])
ORDER BY
	[p].[ParentID] DESC

