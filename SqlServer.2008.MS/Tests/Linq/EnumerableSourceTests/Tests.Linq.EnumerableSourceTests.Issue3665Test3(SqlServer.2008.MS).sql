﻿BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

SELECT
	[x].[PersonID] + [y].[item]
FROM
	[Person] [x]
		CROSS JOIN (VALUES
			(1), (3)
		) [y]([item])

BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

