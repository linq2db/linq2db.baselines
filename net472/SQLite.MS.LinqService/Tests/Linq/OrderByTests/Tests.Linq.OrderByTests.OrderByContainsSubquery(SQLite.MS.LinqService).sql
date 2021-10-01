BeforeExecute
-- SQLite.MS SQLite

SELECT
	[_].[PersonID],
	[_].[LastName],
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				(
					SELECT NULL[item] WHERE 1 = 0
					UNION ALL
					VALUES
						(1), (3)
					) [t1]
			WHERE
				[t1].[item] = [_].[PersonID]
		)
			THEN 1
		ELSE 0
	END
FROM
	[Person] [_]
ORDER BY
	CASE
		WHEN [_].[PersonID] IN (1, 3)
			THEN 1
		ELSE 0
	END

