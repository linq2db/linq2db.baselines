-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @male NChar(1) -- StringFixedLength
SET     @male = 'M'
DECLARE @female NChar(1) -- StringFixedLength
SET     @female = 'F'
DECLARE @gender NChar(1) -- StringFixedLength
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

