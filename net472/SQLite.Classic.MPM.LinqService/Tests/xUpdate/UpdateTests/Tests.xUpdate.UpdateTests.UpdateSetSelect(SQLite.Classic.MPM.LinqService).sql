BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

UPDATE
	[Parent]
SET
	[ParentID] = (
		SELECT
			(
				SELECT
					[c_1].[ParentID]
				FROM
					[Child] [c_1]
				WHERE
					[c_1].[ChildID] = 11
			) + 1000
		FROM
			[Parent] [p]
				INNER JOIN [Child] [c_2] ON [p].[ParentID] = [c_2].[ParentID]
		WHERE
			[p].[ParentID] = 1 AND [Parent].[ParentID] = [p].[ParentID] AND ([Parent].[Value1] = [p].[Value1] OR [Parent].[Value1] IS NULL AND [p].[Value1] IS NULL)
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [p_1]
				INNER JOIN [Child] [c_3] ON [p_1].[ParentID] = [c_3].[ParentID]
		WHERE
			[p_1].[ParentID] = 1 AND [Parent].[ParentID] = [p_1].[ParentID] AND ([Parent].[Value1] = [p_1].[Value1] OR [Parent].[Value1] IS NULL AND [p_1].[Value1] IS NULL)
	)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 1

UPDATE
	[Parent]
SET
	[ParentID] = @ParentID
WHERE
	[Parent].[ParentID] = 1001

