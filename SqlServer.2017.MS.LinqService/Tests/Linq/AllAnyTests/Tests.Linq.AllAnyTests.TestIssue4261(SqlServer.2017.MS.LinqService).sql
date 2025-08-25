BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

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

