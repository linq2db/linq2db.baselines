BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT TOP 2 
	[p].[PersonID], 
	[p].[Gender], 
	[p].[FirstName], 
	[p].[MiddleName], 
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @ID

