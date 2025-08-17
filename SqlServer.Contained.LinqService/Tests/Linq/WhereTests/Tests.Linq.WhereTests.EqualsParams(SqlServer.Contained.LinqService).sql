BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1
DECLARE @name NVarChar(4000) -- String
SET     @name = N'John'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @id AND [p].[FirstName] = @name

