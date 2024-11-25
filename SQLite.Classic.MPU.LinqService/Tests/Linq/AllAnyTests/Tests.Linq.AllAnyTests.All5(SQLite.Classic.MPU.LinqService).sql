BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @n  -- Int32
SET     @n = 3

SELECT
	CASE
		WHEN NOT EXISTS(
			SELECT
				1
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] <= @n
		)
			THEN 1
		ELSE 0
	END

