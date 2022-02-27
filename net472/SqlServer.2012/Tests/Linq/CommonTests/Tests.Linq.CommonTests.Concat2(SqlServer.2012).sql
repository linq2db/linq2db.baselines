BeforeExecute
-- SqlServer.2012

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] + N' ' + Convert(NVarChar(100), 1) = N'John 1'

