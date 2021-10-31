BeforeExecute
-- SQLite.Classic SQLite

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
		INNER JOIN [Child] [_c] ON [key_data_result].[ParentID] = [_c].[ParentID] AND ([a_Parent].[ParentID] IS NOT NULL OR [a_Parent].[Value1] IS NOT NULL)
			LEFT JOIN [Parent] [a_Parent] ON [_c].[ParentID] = [a_Parent].[ParentID]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]

BeforeExecute
-- SQLite.Classic SQLite

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
		INNER JOIN [Child] [_c] ON [key_data_result].[ParentID] = [_c].[ParentID] AND ([a_Parent].[ParentID] IS NOT NULL OR [a_Parent].[Value1] IS NOT NULL)
			LEFT JOIN [Parent] [a_Parent] ON [_c].[ParentID] = [a_Parent].[ParentID]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]

