﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[a_Patient].[Diagnosis],
	Count(*)
FROM
	[Person] [p]
		LEFT JOIN [Patient] [a_Patient] ON [p].[PersonID] = [a_Patient].[PersonID]
GROUP BY
	[a_Patient].[Diagnosis]

