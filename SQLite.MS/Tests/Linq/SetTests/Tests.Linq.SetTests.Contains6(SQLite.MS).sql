BeforeExecute
-- SQLite.MS SQLite
DECLARE @CS8__locals1_n  -- Int32
SET     @CS8__locals1_n = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] + @CS8__locals1_n IN (
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	)

