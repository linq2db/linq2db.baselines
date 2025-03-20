BeforeExecute
-- SQLite.MS SQLite
DECLARE @CS8__locals1_n  -- Int32
SET     @CS8__locals1_n = 1

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID]
	) + @CS8__locals1_n
FROM
	[Parent] [p]

