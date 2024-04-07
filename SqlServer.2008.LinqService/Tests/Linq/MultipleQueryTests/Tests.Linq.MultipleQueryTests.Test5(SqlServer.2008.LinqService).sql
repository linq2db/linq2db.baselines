BeforeExecute
-- SqlServer.2008

SELECT
	[key_data_result].[ParentID],
	[key_data_result].[ParentID_1],
	[key_data_result].[ChildID],
	[detail].[ParentID],
	[detail].[Value1]
FROM
	(
		SELECT DISTINCT
			[a_Parent].[ParentID],
			[ch].[ParentID] as [ParentID_1],
			[ch].[ChildID]
		FROM
			[Child] [ch]
				LEFT JOIN [Parent] [a_Parent] ON [ch].[ParentID] = [a_Parent].[ParentID]
	) [key_data_result]
		INNER JOIN [Parent] [detail] ON [detail].[ParentID] = [key_data_result].[ParentID]

BeforeExecute
-- SqlServer.2008

SELECT
	[a_Parent].[ParentID],
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
		LEFT JOIN [Parent] [a_Parent] ON [ch].[ParentID] = [a_Parent].[ParentID]
ORDER BY
	[ch].[ChildID]

