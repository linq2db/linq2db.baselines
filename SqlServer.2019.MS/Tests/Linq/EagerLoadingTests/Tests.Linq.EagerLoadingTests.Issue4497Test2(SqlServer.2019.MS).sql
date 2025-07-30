BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[i].[FirstName],
	[i].[PersonID],
	[i].[LastName],
	[i].[MiddleName],
	[i].[Gender],
	[a_Patient].[PersonID],
	[a_Patient].[Diagnosis]
FROM
	[Person] [i]
		LEFT JOIN [Patient] [a_Patient] ON [i].[PersonID] = [a_Patient].[PersonID]
WHERE
	[a_Patient].[PersonID] <> 0 OR [a_Patient].[PersonID] IS NULL

