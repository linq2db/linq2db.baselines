﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[x].[PersonID],
	[x].[FirstName],
	[x].[LastName],
	[x].[MiddleName]
FROM
	[Person] [x]
		LEFT JOIN [Patient] [a_Patient] ON [x].[PersonID] = [a_Patient].[PersonID]
WHERE
	[a_Patient].[Diagnosis] = N'Hallucination with Paranoid Bugs'' Delirium of Persecution'

