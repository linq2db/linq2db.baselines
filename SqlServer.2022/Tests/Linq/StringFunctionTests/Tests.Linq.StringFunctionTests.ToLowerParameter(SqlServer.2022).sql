BeforeExecute
-- SqlServer.2022
DECLARE @p NVarChar(4000) -- String
SET     @p = N'john'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) = @p AND [p].[PersonID] = 1

