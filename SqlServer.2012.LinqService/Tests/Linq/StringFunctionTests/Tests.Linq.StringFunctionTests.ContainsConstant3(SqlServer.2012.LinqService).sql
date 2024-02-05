BeforeExecute
-- SqlServer.2012

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IN (N'oh', N'oh''', N'oh\')

