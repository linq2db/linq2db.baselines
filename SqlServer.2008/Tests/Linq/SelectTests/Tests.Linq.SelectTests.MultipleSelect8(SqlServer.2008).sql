BeforeExecute
-- SqlServer.2008

SELECT
	([p2].[PersonID] * 2) / (LEN(N'22.') - 1),
	[p2].[FirstName]
FROM
	[Person] [p2]

