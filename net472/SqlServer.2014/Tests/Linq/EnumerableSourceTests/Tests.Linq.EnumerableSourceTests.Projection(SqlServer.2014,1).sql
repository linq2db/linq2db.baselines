﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	(VALUES
		(N'Janet',2,NULL,NULL,'M'), (N'Doe',3,NULL,NULL,'M')
	) [t1]([FirstName], [PersonID], [LastName], [MiddleName], [Gender])

