BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[key_data_result].[ParentID],
	[_c].[ParentID],
	[_c].[ChildID]
FROM
	(
		SELECT DISTINCT
			[cp].[ParentID]
		FROM
			[Parent] [cp]
		WHERE
			[cp].[ParentID] > 0
	) [key_data_result]
		INNER JOIN [Child] [_c] ON [_c].[ParentID] = [key_data_result].[ParentID] AND [_c].[ChildID] > -100
ORDER BY
	[_c].[ChildID]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[cp].[ParentID],
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [cp].[ParentID] AND [c_1].[ChildID] > -100
	),
	(
		SELECT
			Count(*)
		FROM
			[Child] [c_2]
		WHERE
			[c_2].[ParentID] = [cp].[ParentID] AND [c_2].[ChildID] > -100
	),
	(
		SELECT
			[c_3].[ParentID]
		FROM
			[Child] [c_3]
		WHERE
			[c_3].[ParentID] = [cp].[ParentID] AND [c_3].[ChildID] > -100 AND
			[c_3].[ParentID] > 0
		ORDER BY
			[c_3].[ChildID]
		LIMIT @take
	)
FROM
	[Parent] [cp]
WHERE
	[cp].[ParentID] > 0

