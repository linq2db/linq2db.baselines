BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IN ('oh', 'oh''', 'oh\')

