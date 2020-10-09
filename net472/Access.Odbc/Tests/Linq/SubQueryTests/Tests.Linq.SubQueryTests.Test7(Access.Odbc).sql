BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[t1].[Count_1]
FROM
	[Child] [c_1]
		LEFT JOIN ( 
			SELECT 
				Count(*) as [Count_1], 
				[g_1].[ChildID]
			FROM
				[GrandChild] [g_1]
			GROUP BY
				[g_1].[ChildID]
		) [t1] ON ([t1].[ChildID] = [c_1].[ChildID])

