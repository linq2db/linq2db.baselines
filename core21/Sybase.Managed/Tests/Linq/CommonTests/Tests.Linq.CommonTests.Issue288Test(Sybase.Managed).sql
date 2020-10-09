BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1 
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IS NULL

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ID UniVarChar(4) -- String
SET     @ID = 'John'

SELECT TOP 1 
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @ID

