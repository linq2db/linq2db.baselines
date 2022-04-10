BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
WHERE
	[c_1].[ChildID] > 20 AND [p].[ParentID] = 3
LIMIT @take

