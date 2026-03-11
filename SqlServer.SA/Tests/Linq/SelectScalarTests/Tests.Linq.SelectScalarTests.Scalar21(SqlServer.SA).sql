-- SqlServer.SA SqlServer.2019

SELECT
	LEN([p].[FirstName] + N'.') - 1
FROM
	[Person] [p]

