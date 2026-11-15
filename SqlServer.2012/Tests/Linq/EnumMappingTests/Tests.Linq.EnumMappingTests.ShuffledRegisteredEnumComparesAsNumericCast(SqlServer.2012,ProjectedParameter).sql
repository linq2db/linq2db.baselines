-- SqlServer.2012
DECLARE @value Char(1) -- AnsiStringFixedLength
SET     @value = N'M'

SELECT
	[p].[PersonID],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[Gender] = @value

-- SqlServer.2012
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

