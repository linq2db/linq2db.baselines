-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] IN ('John')

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @st NVarChar(4) -- String
SET     @st = 'John'

SELECT
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] IN (@st)

