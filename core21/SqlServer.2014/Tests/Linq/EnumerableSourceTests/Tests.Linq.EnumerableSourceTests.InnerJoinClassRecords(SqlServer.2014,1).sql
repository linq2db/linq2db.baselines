﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

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

