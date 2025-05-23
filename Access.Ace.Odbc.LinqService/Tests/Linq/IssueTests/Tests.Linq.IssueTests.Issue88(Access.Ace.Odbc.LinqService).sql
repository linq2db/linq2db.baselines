﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = 1 AND [t1].[Gender] = 'M'

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
WHERE
	[t1].[PersonID] = 1 AND 'M' = [t1].[Gender]

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @gender NChar(1) -- StringFixedLength
SET     @gender = 'M'

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = 1 AND [t1].[Gender] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @gender NChar(1) -- StringFixedLength
SET     @gender = 'M'

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = 1 AND ? = [t1].[Gender]

