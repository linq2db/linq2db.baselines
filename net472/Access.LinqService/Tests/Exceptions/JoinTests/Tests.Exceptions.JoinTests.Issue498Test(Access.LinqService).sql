BeforeExecute
-- Access AccessOleDb

SELECT 
	[x].[ParentID]
FROM
	[Parent] [x]
		INNER JOIN [Child] [y] ON ([x].[ParentID] = [y].[ParentID])

BeforeExecute
-- Access AccessOleDb

SELECT 
	[x].[ParentID]
FROM
	[Parent] [x]
		INNER JOIN [Child] [y] ON ([x].[ParentID] = [y].[ParentID])
GROUP BY
	[x].[ParentID]

