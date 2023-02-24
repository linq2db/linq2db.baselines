BeforeExecute
-- SqlServer.2005
DECLARE @param_1 NVarChar(4000) -- String
SET     @param_1 = N'JOHN'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Upper([p].[FirstName]) = @param_1 AND [p].[PersonID] = 1

