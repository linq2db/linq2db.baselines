BeforeExecute
-- SqlServer.2016

SELECT TOP (1)
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IS NULL

BeforeExecute
-- SqlServer.2016
DECLARE @ID NVarChar(4000) -- String
SET     @ID = N'John'

SELECT TOP (1)
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @ID

