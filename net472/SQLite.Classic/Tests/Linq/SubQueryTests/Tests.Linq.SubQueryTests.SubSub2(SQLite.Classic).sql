BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	(
		SELECT
			[c_1].[ParentID] + 1
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] + 1 < [p2].[ParentID] + 2 AND [c_1].[ParentID] + 1 < [p2].[ParentID] + 2 AND
			[p2].[ParentID] = [c_1].[ParentID]
		LIMIT @take
	)
FROM
	[Parent] [p2]
WHERE
	[p2].[ParentID] + 2 > 0 AND [p2].[ParentID] + 1 > 0

