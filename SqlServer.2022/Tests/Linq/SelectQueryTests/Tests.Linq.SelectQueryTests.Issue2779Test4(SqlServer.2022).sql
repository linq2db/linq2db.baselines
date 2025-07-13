BeforeExecute
-- SqlServer.2022

SELECT
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	[x].[PersonID] IN (
		SELECT
			[t1].[value]
		FROM
			(
				SELECT 1 as value
			) [t1]([value])
	)

