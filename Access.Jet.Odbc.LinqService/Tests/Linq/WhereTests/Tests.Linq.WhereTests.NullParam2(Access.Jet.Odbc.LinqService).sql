﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = ? AND [p].[MiddleName] IS NULL

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = ? AND [p].[MiddleName] IS NULL

