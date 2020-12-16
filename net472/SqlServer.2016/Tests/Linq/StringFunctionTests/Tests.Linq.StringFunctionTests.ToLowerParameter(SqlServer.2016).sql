BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @param_1 NVarChar(4000) -- String
SET     @param_1 = N'john'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) = @param_1 AND [p].[PersonID] = 1

