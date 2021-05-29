BeforeExecute
-- SqlCe

SELECT
	[key_data_result].[ParentID],
	[key_data_result].[Value1],
	[detail].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID],
			[p].[Value1]
		FROM
			[Parent] [p]
	) [key_data_result]
		INNER JOIN [Child] [detail]
			LEFT JOIN [Parent] [a_Parent] ON [detail].[ParentID] = [a_Parent].[ParentID]
		ON ([a_Parent].[ParentID] = [key_data_result].[ParentID] AND ([a_Parent].[Value1] = [key_data_result].[Value1] OR [a_Parent].[Value1] IS NULL AND [key_data_result].[Value1] IS NULL))
ORDER BY
	[detail].[ChildID] * [detail].[ParentID] DESC

BeforeExecute
-- SqlCe

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]

