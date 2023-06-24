BeforeExecute
-- SqlServer.2022

SELECT
	LEN(REPLACE([p].[FirstName],' ','.'))
FROM
	[Person] [p]

