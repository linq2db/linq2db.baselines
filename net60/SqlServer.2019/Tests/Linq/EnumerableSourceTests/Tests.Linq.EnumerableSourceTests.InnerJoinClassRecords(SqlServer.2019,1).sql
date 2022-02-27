BeforeExecute
-- SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (VALUES
			(1), (2)
		) [n]([PersonID]) ON [p].[PersonID] = [n].[PersonID]

