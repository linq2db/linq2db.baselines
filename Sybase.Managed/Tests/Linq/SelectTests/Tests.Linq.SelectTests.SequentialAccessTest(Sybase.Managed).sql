-- Sybase.Managed Sybase

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[PersonID],
	[p].[LastName],
	CASE WHEN [p].[FirstName] IS NULL OR ' ' IS NULL OR [p].[LastName] IS NULL THEN NULL ELSE [p].[FirstName] || ' ' || [p].[LastName] END
FROM
	[Person] [p]

