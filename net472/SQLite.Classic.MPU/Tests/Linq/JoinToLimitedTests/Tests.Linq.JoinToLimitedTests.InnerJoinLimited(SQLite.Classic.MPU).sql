BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[o].[ParentID],
	[o].[Value1],
	[cg].[ParentID],
	[cg].[ChildID]
FROM
	[Parent] [o]
		INNER JOIN (
			SELECT
				[t1].[ParentID],
				[t1].[ChildID]
			FROM
				[Child] [t1]
			LIMIT @take
		) [cg] ON [o].[ParentID] = [cg].[ParentID]

