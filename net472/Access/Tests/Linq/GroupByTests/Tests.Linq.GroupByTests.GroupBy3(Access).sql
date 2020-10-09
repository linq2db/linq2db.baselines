BeforeExecute
-- Access AccessOleDb

SELECT 
	[t1].[c1]
FROM
	( 
		SELECT 
			Iif([selectParam].[Value1] IS NULL, [c_1].[ChildID], [selectParam].[Value1]) as [c1]
		FROM
			[Parent] [selectParam]
				INNER JOIN [Child] [c_1] ON ([selectParam].[ParentID] = [c_1].[ParentID])
	) [t1]
GROUP BY
	[t1].[c1]

