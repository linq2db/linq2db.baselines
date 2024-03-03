﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[PersonID],
	[person_1].[FirstName],
	[doctor_1].[Taxonomy]
FROM
	[Patient] [t1]
		CROSS JOIN [Person] [person_1]
		LEFT JOIN [Doctor] [doctor_1] ON ([doctor_1].[PersonID] = [person_1].[PersonID]) AND ([doctor_1].[PersonID] = [t1].[PersonID])
WHERE
	[person_1].[FirstName] LIKE N'J%' ESCAPE N'~'
ORDER BY
	[t1].[PersonID],
	[person_1].[FirstName],
	[doctor_1].[Taxonomy]

