-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value NChar(1) -- StringFixedLength
SET     @value = 'M'

SELECT
	[p].[PersonID],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	IIF([p].[PersonID] > 2, 'M', 'F') = @value

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

