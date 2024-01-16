BeforeExecute
-- Access AccessOleDb

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = 1 AND [_].[Gender] = 'M'

BeforeExecute
-- Access AccessOleDb

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = 1 AND 'M' = [_].[Gender]

BeforeExecute
-- Access AccessOleDb
DECLARE @gender WChar(1) -- StringFixedLength
SET     @gender = 'M'

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = 1 AND [_].[Gender] = @gender

BeforeExecute
-- Access AccessOleDb
DECLARE @gender WChar(1) -- StringFixedLength
SET     @gender = 'M'

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = 1 AND @gender = [_].[Gender]

