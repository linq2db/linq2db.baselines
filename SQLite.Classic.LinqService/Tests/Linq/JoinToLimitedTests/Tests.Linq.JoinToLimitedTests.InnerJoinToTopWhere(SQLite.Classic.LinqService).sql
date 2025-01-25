BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[o].[ParentID],
	[o].[Value1],
	[c_2].[ParentID],
	[c_2].[ChildID]
FROM
	[Parent] [o]
		INNER JOIN (
			SELECT
				[c_1].[ParentID],
				[c_1].[ChildID],
				ROW_NUMBER() OVER (PARTITION BY [c_1].[ParentID] ORDER BY [c_1].[ChildID] DESC) as [rn]
			FROM
				[Child] [c_1]
		) [c_2] ON [c_2].[ParentID] = [o].[ParentID] AND [c_2].[rn] <= 1

