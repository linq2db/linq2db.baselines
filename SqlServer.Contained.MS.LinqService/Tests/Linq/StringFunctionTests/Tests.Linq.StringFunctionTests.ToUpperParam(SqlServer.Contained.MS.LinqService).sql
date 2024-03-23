BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = N'JOHN'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Upper([p].[FirstName]) = @p AND [p].[PersonID] = 1

