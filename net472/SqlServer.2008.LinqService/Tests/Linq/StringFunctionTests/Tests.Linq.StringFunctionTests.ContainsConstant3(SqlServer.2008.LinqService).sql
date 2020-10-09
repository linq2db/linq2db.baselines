BeforeExecute
-- SqlServer.2008

SELECT 
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IN (N'oh', N'oh''', N'oh\')

