BeforeExecute
-- SqlServer.2017
DECLARE @FirstName_1 NVarChar(4000) -- String
SET     @FirstName_1 = N'1'

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
-- SqlServer.2017

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
-- SqlServer.2017
DECLARE @FirstName_1 NVarChar(4000) -- String
SET     @FirstName_1 = N'1'

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

