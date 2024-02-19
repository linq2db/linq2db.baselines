BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 10

SELECT
	[p_1].[ParentID],
	[t1].[ChildID]
FROM
	(
		SELECT
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] > 0
		LIMIT @take
	) [p_1],
	(
		SELECT
			[c_1].[ChildID]
		FROM
			[Child] [c_1]
		LIMIT @take
	) [t1]

