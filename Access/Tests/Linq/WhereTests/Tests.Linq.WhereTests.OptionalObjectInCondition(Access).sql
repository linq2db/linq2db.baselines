﻿BeforeExecute
-- Access AccessOleDb
DECLARE @FirstName VarWChar(1) -- String
SET     @FirstName = '1'

SELECT
	[r].[FirstName],
	[r].[PersonID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	([r].[FirstName] = @FirstName)

BeforeExecute
-- Access AccessOleDb

SELECT
	[r].[FirstName],
	[r].[PersonID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[FirstName] IS NULL

BeforeExecute
-- Access AccessOleDb
DECLARE @FirstName VarWChar(1) -- String
SET     @FirstName = '1'

SELECT
	[r].[FirstName],
	[r].[PersonID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	([r].[FirstName] = @FirstName)

