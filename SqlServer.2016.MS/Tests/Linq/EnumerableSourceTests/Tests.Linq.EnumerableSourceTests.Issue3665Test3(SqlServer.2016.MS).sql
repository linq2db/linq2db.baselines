﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[x].[PersonID],
	[y].[value__]
FROM
	[Person] [x]
		CROSS JOIN (VALUES
			(1), (3)
		) [y]([value__])

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

