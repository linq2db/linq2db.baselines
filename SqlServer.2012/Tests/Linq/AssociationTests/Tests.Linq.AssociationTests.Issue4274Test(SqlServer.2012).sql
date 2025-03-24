﻿BeforeExecute
--  SqlServer.2012

SELECT
	[serv].[PersonID]
FROM
	(
		SELECT
			[gr].[PersonID]
		FROM
			[Patient] [gr]
		GROUP BY
			[gr].[PersonID]
	) [serv]
		INNER JOIN [Person] [a_Person] ON [serv].[PersonID] = [a_Person].[PersonID]
WHERE
	[a_Person].[PersonID] = 1

