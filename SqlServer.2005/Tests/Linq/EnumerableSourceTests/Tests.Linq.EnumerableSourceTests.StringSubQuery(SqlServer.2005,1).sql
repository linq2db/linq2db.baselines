-- SqlServer.2005

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
				SELECT N'j' AS [item]
				UNION ALL
				SELECT N'o'
				UNION ALL
				SELECT N'h'
				UNION ALL
				SELECT N'n') [x]
		WHERE
			CharIndex([x].[item], [t].[FirstName]) - 1 > 0
	)

