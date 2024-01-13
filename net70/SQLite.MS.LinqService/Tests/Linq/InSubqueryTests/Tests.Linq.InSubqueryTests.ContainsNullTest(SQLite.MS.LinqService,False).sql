BeforeExecute
-- SQLite.MS SQLite

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Parent] [param]
			WHERE
				[param].[Value1] IS NULL
		)
			THEN 1
		ELSE 0
	END

