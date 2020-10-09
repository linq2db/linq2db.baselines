BeforeExecute
-- Access AccessOleDb

SELECT 
	[key_data_result].[ParentID], 
	[key_data_result].[Value1], 
	[_c].[ParentID], 
	[_c].[ChildID]
FROM
	( 
		SELECT DISTINCT 
			[t1].[ParentID], 
			[t1].[Value1]
		FROM
			( 
				SELECT TOP 10 
					[p].[ParentID], 
					[p].[Value1]
				FROM
					[Parent] [p]
			) [t1]
	) [key_data_result]
		INNER JOIN [Child] [_c] ON ([_c].[ParentID] = [key_data_result].[ParentID])
ORDER BY
	[_c].[ChildID]

BeforeExecute
-- Access AccessOleDb

SELECT TOP 10 
	[p].[ParentID], 
	[p].[Value1]
FROM
	[Parent] [p]

