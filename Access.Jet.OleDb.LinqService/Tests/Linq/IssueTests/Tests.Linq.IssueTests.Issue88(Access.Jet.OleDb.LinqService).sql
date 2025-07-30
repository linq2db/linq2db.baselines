BeforeExecute
-- Access.Jet.OleDb AccessOleDb

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
-- Access.Jet.OleDb AccessOleDb

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
-- Access.Jet.OleDb AccessOleDb
DECLARE @gender WChar(1) -- StringFixedLength
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
	[t1].[PersonID] = 1 AND [t1].[Gender] = @gender

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @gender WChar(1) -- StringFixedLength
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
	[t1].[PersonID] = 1 AND @gender = [t1].[Gender]

