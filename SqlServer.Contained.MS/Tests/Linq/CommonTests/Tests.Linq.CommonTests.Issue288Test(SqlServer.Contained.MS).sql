BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT TOP (1)
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IS NULL

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @ID NVarChar(4000) -- String
SET     @ID = N'John'

SELECT TOP (1)
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @ID

