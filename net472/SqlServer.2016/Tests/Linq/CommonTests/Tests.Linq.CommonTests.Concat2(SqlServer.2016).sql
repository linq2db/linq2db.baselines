BeforeExecute
-- SqlServer.2016

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] + N' ' + Convert(NVarChar(100), 1) = N'John 1'

