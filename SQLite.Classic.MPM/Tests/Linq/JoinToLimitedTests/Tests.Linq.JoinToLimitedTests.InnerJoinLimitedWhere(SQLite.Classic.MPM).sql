BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[o].[ParentID],
	[o].[Value1],
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Parent] [o]
		INNER JOIN (
			SELECT
				[t1].[ParentID],
				[t1].[ChildID]
			FROM
				[Child] [t1]
			LIMIT @take
		) [x] ON [x].[ParentID] = [o].[ParentID]

