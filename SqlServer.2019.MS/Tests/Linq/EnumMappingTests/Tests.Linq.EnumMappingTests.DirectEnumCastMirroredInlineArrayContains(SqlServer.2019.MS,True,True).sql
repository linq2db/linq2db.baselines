-- SqlServer.2019.MS SqlServer.2019
DECLARE @api Char(1) -- AnsiStringFixedLength
SET     @api = N'M'

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	@api IN ([p].[Gender], 'M')

-- SqlServer.2019.MS SqlServer.2019
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

