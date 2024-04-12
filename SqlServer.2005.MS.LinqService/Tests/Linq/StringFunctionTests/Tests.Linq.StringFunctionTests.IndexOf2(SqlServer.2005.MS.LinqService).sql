BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
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

