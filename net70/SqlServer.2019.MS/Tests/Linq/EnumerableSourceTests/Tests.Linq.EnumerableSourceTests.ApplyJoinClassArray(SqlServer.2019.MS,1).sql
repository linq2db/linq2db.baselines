﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		CROSS APPLY (VALUES
			([p].[FirstName],1,N'Janet'), (NULL,2,N'Doe')
		) [n]([FirstName], [PersonID], [LastName])
WHERE
	[p].[LastName] = [n].[LastName]

