﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @n Int -- Int32
SET     @n = 1
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	([p].[PersonID] + CVar(?)) - 1,
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] + CVar(?) = 2

