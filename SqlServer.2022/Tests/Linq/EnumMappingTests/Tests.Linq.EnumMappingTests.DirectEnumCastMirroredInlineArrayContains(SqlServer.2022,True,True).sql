-- SqlServer.2022
DECLARE @api Char(1) -- AnsiStringFixedLength
SET     @api = N'M'

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	@api IN ([p].[Gender], 'M')

-- SqlServer.2022
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

