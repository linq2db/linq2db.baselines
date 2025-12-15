-- SqlServer.2017.MS SqlServer.2017
DECLARE @gender Char(1) -- AnsiStringFixedLength
SET     @gender = N'M'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[Gender] = @gender

