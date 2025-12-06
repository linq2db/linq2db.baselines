-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

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
				(N'j'), (N'o'), (N'h'), (N'n')
			) [x]([item])
		WHERE
			CharIndex([x].[item], [t].[FirstName]) - 1 > 0
	)

