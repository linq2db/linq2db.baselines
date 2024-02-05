BeforeExecute
-- SqlServer.2005

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IN (N'oh', N'oh''', N'oh\')

