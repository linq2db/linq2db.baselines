BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[t1].[c1], 
	Sum([t1].[ParentID])
FROM
	( 
		SELECT 
			[selectParam].[ChildID] + 1 as [c1], 
			[selectParam].[ParentID]
		FROM
			[Child] [selectParam]
	) [t1]
GROUP BY
	[t1].[c1]

