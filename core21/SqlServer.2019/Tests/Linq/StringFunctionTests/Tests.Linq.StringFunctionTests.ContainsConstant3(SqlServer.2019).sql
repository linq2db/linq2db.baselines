BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IN (N'oh', N'oh''', N'oh\')

