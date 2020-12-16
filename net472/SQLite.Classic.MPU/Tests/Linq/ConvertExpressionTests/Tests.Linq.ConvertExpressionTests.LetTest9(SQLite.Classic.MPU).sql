BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p_1  -- Int32
SET     @p_1 = 10

SELECT
	[key_data_result].[ParentID],
	[key_data_result].[Value1],
	[_c].[ParentID],
	[_c].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID],
			[t1].[Value1]
		FROM
			(
				SELECT
					[p].[ParentID],
					[p].[Value1]
				FROM
					[Parent] [p]
				LIMIT @p_1
			) [t1]
	) [key_data_result]
		INNER JOIN [Child] [_c] ON [_c].[ParentID] = [key_data_result].[ParentID]
ORDER BY
	[_c].[ChildID]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 10

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
LIMIT @take

