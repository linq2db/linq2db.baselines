-- SqlServer.2008
DECLARE @Value Char(1) -- AnsiStringFixedLength
SET     @Value = N'F'

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[Gender] = @Value

-- SqlServer.2008
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

