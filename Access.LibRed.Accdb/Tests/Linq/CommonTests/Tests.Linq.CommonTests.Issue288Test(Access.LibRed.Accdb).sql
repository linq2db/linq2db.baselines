-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 1
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IS NULL

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @p NVarChar(4) -- String
SET     @p = 'John'

SELECT TOP 1
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @p

