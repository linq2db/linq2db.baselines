﻿BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT 
	[a_Patient].[Diagnosis]
FROM
	[Person] [x]
		LEFT JOIN [Patient] [a_Patient] ON [x].[PersonID] = [a_Patient].[PersonID]

