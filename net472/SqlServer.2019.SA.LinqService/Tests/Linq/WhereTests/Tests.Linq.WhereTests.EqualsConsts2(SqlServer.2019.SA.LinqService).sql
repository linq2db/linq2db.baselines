﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	([p].[FirstName] = N'John' OR [p].[FirstName] = N'John''s') AND
	[p].[PersonID] > 0 AND
	[p].[PersonID] < 2 AND
	[p].[LastName] <> N'123'

