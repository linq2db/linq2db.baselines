﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[c_1].[FirstName],
	[c_1].[PersonID],
	[c_1].[LastName],
	[c_1].[MiddleName],
	[c_1].[Gender]
FROM
	[Person] [cp]
		CROSS JOIN [Person] [c_1]
WHERE
	[c_1].[PersonID] = 1

