﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 2
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE ? AND [p].[PersonID] = 1

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE ? AND [p].[PersonID] = 1

