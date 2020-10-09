BeforeExecute
-- Access AccessOleDb

SELECT 
	(
		SELECT DISTINCT TOP 1 
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
		WHERE
			[p].[ParentID] = [c_1].[ParentID]
	)
FROM
	[Parent] [p]

