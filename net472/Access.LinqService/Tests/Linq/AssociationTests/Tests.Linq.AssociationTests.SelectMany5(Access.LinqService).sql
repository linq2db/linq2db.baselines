BeforeExecute
-- Access AccessOleDb

SELECT 
	[cp].[ParentID]
FROM
	[Parent] [cp]
		INNER JOIN [Child] [c_1] ON ([cp].[ParentID] = [c_1].[ParentID])

