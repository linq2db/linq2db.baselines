BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @n  -- Int32
SET     @n = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] + @n IN (
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	)

