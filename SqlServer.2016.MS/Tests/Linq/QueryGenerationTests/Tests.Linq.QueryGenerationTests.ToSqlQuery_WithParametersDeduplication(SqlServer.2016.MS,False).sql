-- SqlServer.2016.MS SqlServer.2016
DECLARE @firstName NVarChar(4000) -- String
SET     @firstName = N'John'

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

-- SqlServer.2016.MS SqlServer.2016
DECLARE @firstName NVarChar(4000) -- String
SET     @firstName = N'John'

SELECT TOP (2)
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @firstName OR [p].[LastName] = @firstName

