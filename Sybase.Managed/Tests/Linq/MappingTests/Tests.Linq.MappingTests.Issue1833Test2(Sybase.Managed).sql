-- Sybase.Managed Sybase

SELECT TOP 2
	[e].[PersonID],
	[e].[FirstName],
	[e].[LastName],
	CASE WHEN [e].[FirstName] IS NULL OR ':' IS NULL OR [e].[LastName] IS NULL THEN NULL ELSE [e].[FirstName] + ':' + [e].[LastName] END
FROM
	[Person] [e]
WHERE
	[e].[PersonID] = 1

