BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FirstName_1 UniVarChar(1) -- String
SET     @FirstName_1 = '1'

SELECT 
	[r].[FirstName], 
	[r].[PersonID], 
	[r].[LastName], 
	[r].[MiddleName], 
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[FirstName] = @FirstName_1

BeforeExecute
-- Sybase.Managed Sybase

SELECT 
	[r].[FirstName], 
	[r].[PersonID], 
	[r].[LastName], 
	[r].[MiddleName], 
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[FirstName] IS NULL

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FirstName_1 UniVarChar(1) -- String
SET     @FirstName_1 = '1'

SELECT 
	[r].[FirstName], 
	[r].[PersonID], 
	[r].[LastName], 
	[r].[MiddleName], 
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[FirstName] = @FirstName_1

