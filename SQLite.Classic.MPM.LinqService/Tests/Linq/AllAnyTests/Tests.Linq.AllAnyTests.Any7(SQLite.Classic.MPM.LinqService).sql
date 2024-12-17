BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				[Child] [t1]
		)
			THEN 1
		ELSE 0
	END

