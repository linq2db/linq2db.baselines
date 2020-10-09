BeforeExecute
-- Access AccessOleDb

SELECT 
	(
		SELECT TOP 1 
			[p].[ChildID]
		FROM
			[Child] [p]
	)
FROM
	[Parent] [p_1]

