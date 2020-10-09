BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT 
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] + N' ' + Convert(VarChar(11), 1) = N'John 1'

