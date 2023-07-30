BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	((([p].[FirstName] + ' ') + Convert(VarChar(11), 1)) + Convert(VarChar(11), 2)) = 'John 12'

