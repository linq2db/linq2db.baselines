BeforeExecute
-- SqlCe

SELECT 
	[t1].[c1], 
	Avg([t1].[ParentID])
FROM
	( 
		SELECT 
			[selectParam].[ChildID] as [c1], 
			[selectParam].[ParentID]
		FROM
			[Child] [selectParam]
	) [t1]
GROUP BY
	[t1].[c1]

