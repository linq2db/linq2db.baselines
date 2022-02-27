BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] + ' ' + Convert(VarChar(11), 1) = 'John 1'

