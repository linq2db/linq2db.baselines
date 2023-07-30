BeforeExecute
-- SqlServer.2008 (asynchronously)
DECLARE @param NVarChar(4000) -- String
SET     @param = N'test'

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[LastName] = @param

