﻿BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Length Int -- Int32
SET     @Length = 2

SELECT
	([p2].[PersonID] * 2) / CVar(?),
	[p2].[FirstName]
FROM
	[Person] [p2]

