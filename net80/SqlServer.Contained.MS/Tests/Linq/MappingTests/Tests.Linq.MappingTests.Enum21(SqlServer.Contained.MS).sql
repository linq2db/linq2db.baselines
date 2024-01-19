BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
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

