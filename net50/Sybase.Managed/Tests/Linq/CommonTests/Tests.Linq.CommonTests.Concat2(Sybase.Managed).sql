BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] + ' ' + Convert(NVarChar(100), 1) = 'John 1'

