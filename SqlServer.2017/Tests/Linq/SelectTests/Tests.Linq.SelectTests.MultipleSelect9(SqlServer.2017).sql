BeforeExecute
-- SqlServer.2017

SELECT
	([p5].[PersonID] * (LEN(N'22.') - 1)) / 2,
	[p5].[FirstName]
FROM
	[Person] [p5]

