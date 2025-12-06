-- SqlServer.2022.MS SqlServer.2022

SELECT
	LEN([p].[FirstName] + N'.') - 1
FROM
	[Person] [p]

