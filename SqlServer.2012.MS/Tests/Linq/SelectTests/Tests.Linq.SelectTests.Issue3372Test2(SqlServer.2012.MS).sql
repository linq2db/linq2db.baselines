BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[e].[FirstName],
	IIF([a_Person].[PersonID] IS NOT NULL AND [a_Person].[MiddleName] IS NOT NULL, 1, 0),
	[a_Person].[MiddleName]
FROM
	[Person] [e]
		LEFT JOIN [Patient] [a_Patient] ON [e].[PersonID] = [a_Patient].[PersonID]
		LEFT JOIN [Person] [a_Person] ON [a_Patient].[PersonID] = [a_Person].[PersonID]

