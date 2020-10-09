BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT 
	[ch].[ParentID], 
	[ch].[ChildID]
FROM
	[Child] [ch]
		INNER JOIN [Parent] [p] ON [p].[ParentID] = Floor(Convert(Float, [ch].[ChildID]) / 10)
WHERE
	[ch].[ParentID] = [p].[ParentID]

