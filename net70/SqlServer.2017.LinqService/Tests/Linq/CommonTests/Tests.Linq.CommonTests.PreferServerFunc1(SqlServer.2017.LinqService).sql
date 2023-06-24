BeforeExecute
-- SqlServer.2017

SELECT
	LEN(REPLACE([p].[FirstName],' ','.'))
FROM
	[Person] [p]

