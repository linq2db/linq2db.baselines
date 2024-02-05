BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[key_data_result].[ParentID],
	[key_data_result].[Value1],
	[detail].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID],
			[t1].[Value1]
		FROM
			(
				SELECT
					[x].[ParentID],
					[x].[Value1]
				FROM
					[Parent] [x]
				WHERE
					[x].[ParentID] = 1
				LIMIT @take
			) [t1]
	) [key_data_result]
		INNER JOIN [Child] [detail] ON [key_data_result].[ParentID] = [detail].[ParentID]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[x].[ParentID],
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = 1
LIMIT @take

