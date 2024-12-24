BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @n  -- Int32
SET     @n = 3

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] <= @n
	)

