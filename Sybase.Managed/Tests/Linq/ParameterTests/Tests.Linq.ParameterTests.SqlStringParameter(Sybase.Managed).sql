-- Sybase.Managed Sybase
DECLARE @p UniVarChar(4) -- String
SET     @p = 'John'

SELECT TOP 2
	[t].[PersonID],
	[t].[FirstName],
	[t].[LastName],
	[t].[MiddleName],
	[t].[Gender]
FROM
	[Person] [t]
WHERE
	[t].[FirstName] = @p

-- Sybase.Managed Sybase
DECLARE @p UniVarChar(6) -- String
SET     @p = 'Tester'

SELECT TOP 2
	[t].[PersonID],
	[t].[FirstName],
	[t].[LastName],
	[t].[MiddleName],
	[t].[Gender]
FROM
	[Person] [t]
WHERE
	[t].[FirstName] = @p

