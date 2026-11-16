-- SqlServer.Contained SqlServer.2025
DECLARE @api Char(1) -- AnsiStringFixedLength
SET     @api = N'F'

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	@api IN ([p].[Gender])

-- SqlServer.Contained SqlServer.2025
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

