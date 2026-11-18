-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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
			(VALUES
				('j'), ('o'), ('h'), ('n')
			) [x]([item])
		WHERE
			InStr(1, [t].[FirstName], [x].[item], 1) - 1 > 0
	)

