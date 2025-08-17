BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT TOP (1)
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IS NULL

BeforeExecute
-- SqlServer.2016 (asynchronously)
DECLARE @p NVarChar(4000) -- String
SET     @p = N'John'

SELECT TOP (1)
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @p

