-- Access.Ace.OleDb AccessOleDb
DECLARE @male WChar(1) -- StringFixedLength
SET     @male = 'M'
DECLARE @female WChar(1) -- StringFixedLength
SET     @female = 'F'
DECLARE @gender WChar(1) -- StringFixedLength
SET     @gender = 'F'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	IIF([p].[PersonID] > 2, @male, @female) = @gender

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

