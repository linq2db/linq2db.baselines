﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[t2].[Key_1]
		FROM
			(
				SELECT
					N'test' + [a_Patient].[Diagnosis] as [Key_1]
				FROM
					[Person] [t1]
						LEFT JOIN [Patient] [a_Patient] ON [t1].[PersonID] = [a_Patient].[PersonID]
			) [t2]
		GROUP BY
			[t2].[Key_1]
	) [t3]

