BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[FirstName],
	[t].[PersonID],
	[t].[LastName],
	[t].[MiddleName],
	[t].[Gender]
FROM
	[Person] [t]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT NULL[item] WHERE 1 = 0
				UNION ALL
				VALUES
					('j'), ('o'), ('h'), ('n')
				) [t1]
		WHERE
			CharIndex([t1].[item], [t].[FirstName]) - 1 > 0
	)

