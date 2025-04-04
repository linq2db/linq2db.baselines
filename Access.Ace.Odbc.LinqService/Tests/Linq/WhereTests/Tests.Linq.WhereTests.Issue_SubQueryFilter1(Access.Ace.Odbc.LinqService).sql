﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @filter1 NVarChar(6) -- String
SET     @filter1 = '%John%'
DECLARE @filter2 NVarChar(8) -- String
SET     @filter2 = '%Tester%'

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [e]
		WHERE
			[e].[FirstName] LIKE ? AND [e].[PersonID] = (
				SELECT TOP 1
					[d].[PersonID]
				FROM
					[Patient] [d]
			)
	) OR
	EXISTS(
		SELECT
			*
		FROM
			[Person] [e_1]
		WHERE
			[e_1].[FirstName] LIKE ? AND [e_1].[PersonID] = (
				SELECT TOP 1
					[d_1].[PersonID]
				FROM
					[Patient] [d_1]
			)
	)
ORDER BY
	[t1].[PersonID]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

