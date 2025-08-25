BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT NULL [item] WHERE 1 = 0
				UNION ALL
				VALUES
					('John'), ('Not John')
				) [y]
		WHERE
			[y].[item] = [x].[FirstName]
	)

