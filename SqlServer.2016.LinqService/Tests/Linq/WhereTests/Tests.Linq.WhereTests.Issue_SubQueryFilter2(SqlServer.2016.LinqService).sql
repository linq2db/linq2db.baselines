﻿BeforeExecute
-- SqlServer.2016
DECLARE @filter1 NVarChar(4000) -- String
SET     @filter1 = N'%John%'
DECLARE @filter2 NVarChar(4000) -- String
SET     @filter2 = N'%Tester%'

SELECT
	[p].[PersonID],
	[p].[Diagnosis]
FROM
	[Patient] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [e],
			(
				SELECT TOP (1)
					[d].[PersonID] as [cond]
				FROM
					[Patient] [d]
			) [t1]
		WHERE
			[e].[PersonID] = [p].[PersonID] AND [e].[FirstName] LIKE @filter1 ESCAPE N'~' AND
			[e].[PersonID] = [t1].[cond]
	) OR
	EXISTS(
		SELECT
			*
		FROM
			[Person] [e_1],
			(
				SELECT TOP (1)
					[d_1].[PersonID] as [cond]
				FROM
					[Patient] [d_1]
			) [t2]
		WHERE
			[e_1].[PersonID] = [p].[PersonID] AND [e_1].[FirstName] LIKE @filter2 ESCAPE N'~' AND
			[e_1].[PersonID] = [t2].[cond]
	)
ORDER BY
	[p].[PersonID]

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

