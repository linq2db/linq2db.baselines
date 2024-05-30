﻿BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p1 NVarChar(1) -- String
SET     @p1 = 'A'
DECLARE @Value Int -- Int32
SET     @Value = 1

SELECT
	[x].[FirstName]
FROM
	[Person] [x]
UNION ALL
SELECT
	[x_1].[FirstName]
FROM
	[Person] [x_1],
	[Patient] [z]
WHERE
	([x_1].[FirstName] = ? OR [z].[PersonID] = ?)

