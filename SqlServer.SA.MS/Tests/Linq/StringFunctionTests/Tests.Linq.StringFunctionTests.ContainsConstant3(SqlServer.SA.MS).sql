BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IN (N'oh', N'oh''', N'oh\')

