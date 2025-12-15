-- SqlServer.2014.MS SqlServer.2014
DECLARE @p NVarChar(4000) -- String
SET     @p = N'abc'

SELECT
	[t].[PersonID],
	[t].[FirstName],
	[t].[LastName],
	[t].[MiddleName],
	[t].[Gender]
FROM
	[Person] [t]
WHERE
	[t].[FirstName] = @p

