BeforeExecute
-- SqlServer.2022

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(VALUES
				(1), (2), (3)
			) [v]([item])
		WHERE
			[v].[item] = [p].[PersonID]
	)

