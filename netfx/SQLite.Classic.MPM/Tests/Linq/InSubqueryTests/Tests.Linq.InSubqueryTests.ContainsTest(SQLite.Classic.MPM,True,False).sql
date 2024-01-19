BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Child] [param]
			WHERE
				[param].[ParentID] = 1
		)
			THEN 1
		ELSE 0
	END

