BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[t1].[Count_1]
FROM
	( 
		SELECT 
			[p3].[ID] + 1 as [ID], 
			[p3].[ParentID]
		FROM
			( 
				SELECT 
					[p2].[ParentID] + 1 as [ID], 
					[a_Parent].[ParentID]
				FROM
					[Child] [p2]
						INNER JOIN [Parent] [a_Parent] ON ([p2].[ParentID] = [a_Parent].[ParentID])
			) [p3]
		WHERE
			[p3].[ID] > 0
	) [p1]
		LEFT JOIN ( 
			SELECT 
				Count(*) as [Count_1], 
				[c_1].[ParentID]
			FROM
				[GrandChild] [c_1]
			GROUP BY
				[c_1].[ParentID]
		) [t1] ON ([t1].[ParentID] + 1 < [p1].[ID] AND [t1].[ParentID] + 1 < [p1].[ID] AND [p1].[ParentID] = [t1].[ParentID])
WHERE
	[p1].[ID] > 0

