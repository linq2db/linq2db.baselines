BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (1)
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IS NULL

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = N'John'

SELECT TOP (1)
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @p

