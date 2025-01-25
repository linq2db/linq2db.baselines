BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = N'oh'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	CharIndex(@p, [p].[FirstName]) - 1 = 1 AND [p].[PersonID] = 1

