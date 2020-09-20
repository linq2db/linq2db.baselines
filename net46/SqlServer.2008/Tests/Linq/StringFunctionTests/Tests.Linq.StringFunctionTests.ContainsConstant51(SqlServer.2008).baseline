BeforeExecute
-- SqlServer.2008
DECLARE @ps NVarChar(4000) -- String
SET     @ps = N'%[[]%'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND N'123[456' LIKE @ps ESCAPE N'~'

