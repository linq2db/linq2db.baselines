BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
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

