BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] + ' ' + Convert(NVarChar(4000), 1) = 'John 1'

