-- SqlServer.2008.MS SqlServer.2008
DECLARE @gender Char(1) -- AnsiStringFixedLength
SET     @gender = N'F'

SELECT
	[p].[PersonID],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[Gender] <> @gender

-- SqlServer.2008.MS SqlServer.2008
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

