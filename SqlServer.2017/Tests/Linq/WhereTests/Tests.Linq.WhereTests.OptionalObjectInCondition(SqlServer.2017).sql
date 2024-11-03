BeforeExecute
-- SqlServer.2017
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'1'

SELECT
	[r].[FirstName],
	[r].[PersonID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[FirstName] = @FirstName

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
	1 = 0

BeforeExecute
-- SqlServer.2017
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'1'

SELECT
	[r].[FirstName],
	[r].[PersonID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[FirstName] = @FirstName

