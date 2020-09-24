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
			[p].[ParentID],
			[p].[Value1]
		FROM
			[Parent] [p]
	) [key_data_result]
		INNER JOIN [Child] [_c] ON ([key_data_result].[ParentID] = [_c].[ParentID] AND [_c].[ParentID] > 0)

BeforeExecute
-- Access AccessOleDb

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]

