BeforeExecute
-- SqlServer.2012

SELECT
	LEN([p].[FirstName] + N'.') - 1
FROM
	[Person] [p]

