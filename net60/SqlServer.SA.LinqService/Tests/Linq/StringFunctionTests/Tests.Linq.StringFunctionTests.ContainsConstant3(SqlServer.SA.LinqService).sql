BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IN (N'oh', N'oh''', N'oh\')

