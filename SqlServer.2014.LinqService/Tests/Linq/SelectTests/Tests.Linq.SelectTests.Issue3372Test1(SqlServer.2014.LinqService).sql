﻿BeforeExecute
-- SqlServer.2014

SELECT
	[e].[FirstName],
	IIF([a_Patient].[PersonID] IS NOT NULL AND [a_Person].[LastName] IS NOT NULL, 1, 0),
	[a_Person].[LastName]
FROM
	[Person] [e]
		LEFT JOIN [Patient] [a_Patient] ON [e].[PersonID] = [a_Patient].[PersonID]
		LEFT JOIN [Person] [a_Person] ON [a_Patient].[PersonID] = [a_Person].[PersonID]

