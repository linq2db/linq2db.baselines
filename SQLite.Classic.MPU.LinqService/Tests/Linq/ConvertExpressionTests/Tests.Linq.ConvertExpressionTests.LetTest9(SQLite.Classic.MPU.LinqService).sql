BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 10

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				[c_1].[ParentID],
				[c_1].[ChildID],
				ROW_NUMBER() OVER (PARTITION BY [c_1].[ParentID] ORDER BY [c_1].[ChildID]) as [rn]
			FROM
				[Child] [c_1]
		) [t1] ON [t1].[ParentID] = [p].[ParentID] AND [t1].[rn] <= 1
LIMIT @take

