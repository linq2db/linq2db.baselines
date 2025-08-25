BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)

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
			(VALUES
				(N'John'), (N'Not John')
			) [y]([item])
		WHERE
			[y].[item] = [x].[FirstName]
	)

