BeforeExecute
-- SqlServer.2017

SELECT 
	[t1].[FirstName]
FROM
	[Person] [t1]
GROUP BY
	[t1].[FirstName]

BeforeExecute
-- SqlServer.2017
DECLARE @FirstName_1 NVarChar(4000) -- String
SET     @FirstName_1 = N'Jane'

SELECT 
	[keyParam].[FirstName], 
	[keyParam].[PersonID], 
	[keyParam].[LastName], 
	[keyParam].[MiddleName], 
	[keyParam].[Gender]
FROM
	[Person] [keyParam]
WHERE
	[keyParam].[FirstName] = @FirstName_1

BeforeExecute
-- SqlServer.2017
DECLARE @FirstName_1 NVarChar(4000) -- String
SET     @FirstName_1 = N'John'

SELECT 
	[keyParam].[FirstName], 
	[keyParam].[PersonID], 
	[keyParam].[LastName], 
	[keyParam].[MiddleName], 
	[keyParam].[Gender]
FROM
	[Person] [keyParam]
WHERE
	[keyParam].[FirstName] = @FirstName_1

BeforeExecute
-- SqlServer.2017
DECLARE @FirstName_1 NVarChar(4000) -- String
SET     @FirstName_1 = N'Jürgen'

SELECT 
	[keyParam].[FirstName], 
	[keyParam].[PersonID], 
	[keyParam].[LastName], 
	[keyParam].[MiddleName], 
	[keyParam].[Gender]
FROM
	[Person] [keyParam]
WHERE
	[keyParam].[FirstName] = @FirstName_1

BeforeExecute
-- SqlServer.2017
DECLARE @FirstName_1 NVarChar(4000) -- String
SET     @FirstName_1 = N'Tester'

SELECT 
	[keyParam].[FirstName], 
	[keyParam].[PersonID], 
	[keyParam].[LastName], 
	[keyParam].[MiddleName], 
	[keyParam].[Gender]
FROM
	[Person] [keyParam]
WHERE
	[keyParam].[FirstName] = @FirstName_1

