BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				[p].[ParentID]
			FROM
				[Parent] [p]
			UNION ALL
			SELECT
				[p_1].[ParentID]
			FROM
				[Parent] [p_1]
		)
			THEN 1
		ELSE 0
	END

