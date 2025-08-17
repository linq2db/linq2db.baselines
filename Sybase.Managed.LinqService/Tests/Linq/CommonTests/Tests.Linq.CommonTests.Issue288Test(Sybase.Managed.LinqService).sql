BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT TOP 1
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IS NULL

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @p UniVarChar(4) -- String
SET     @p = 'John'

SELECT TOP 1
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @p

