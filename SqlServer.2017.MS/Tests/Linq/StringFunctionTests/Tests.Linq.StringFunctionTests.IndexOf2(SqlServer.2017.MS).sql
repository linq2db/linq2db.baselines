BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @p NVarChar(4000) -- String
SET     @p = N'e'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	CharIndex(@p, [p].[LastName], 3) - 1 = 4 AND [p].[PersonID] = 2

