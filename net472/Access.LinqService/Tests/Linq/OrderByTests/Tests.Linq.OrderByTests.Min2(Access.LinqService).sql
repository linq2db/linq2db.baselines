BeforeExecute
-- Access AccessOleDb

SELECT 
	Min([t1].[ParentID])
FROM
	( 
		SELECT TOP 3 
			[p].[ParentID]
		FROM
			[Parent] [p]
		ORDER BY
			[p].[ParentID]
	) [t1]

