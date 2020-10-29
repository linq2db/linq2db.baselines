BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ParentID_1  -- Int32
SET     @ParentID_1 = 1

SELECT
	[key_data_result].[ParentID],
	[_gjd_c].[ParentID],
	[_gjd_c].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] = 1
	) [key_data_result]
		INNER JOIN [Child] [_gjd_c] ON [_gjd_c].[ParentID] - @ParentID_1 = [key_data_result].[ParentID]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1

