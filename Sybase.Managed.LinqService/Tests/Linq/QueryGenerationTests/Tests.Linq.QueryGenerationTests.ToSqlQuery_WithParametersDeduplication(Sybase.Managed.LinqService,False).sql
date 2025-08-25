BeforeExecute
-- Sybase.Managed Sybase
DECLARE @firstName UniVarChar(255) -- String
SET     @firstName = 'John'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @firstName OR [p].[LastName] = @firstName

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @firstName UniVarChar(4) -- String
SET     @firstName = 'John'

SELECT TOP 2
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @firstName OR [p].[LastName] = @firstName

