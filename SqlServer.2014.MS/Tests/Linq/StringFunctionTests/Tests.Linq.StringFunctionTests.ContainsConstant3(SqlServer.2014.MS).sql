BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IN (N'oh', N'oh''', N'oh\')

