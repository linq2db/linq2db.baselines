BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	([p].[FirstName] + N' 1') = N'John 1'

