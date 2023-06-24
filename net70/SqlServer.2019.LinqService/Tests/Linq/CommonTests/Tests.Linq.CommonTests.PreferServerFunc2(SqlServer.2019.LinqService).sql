BeforeExecute
-- SqlServer.2019

SELECT
	LEN(REPLACE([p].[FirstName],' ','.'))
FROM
	[Person] [p]

