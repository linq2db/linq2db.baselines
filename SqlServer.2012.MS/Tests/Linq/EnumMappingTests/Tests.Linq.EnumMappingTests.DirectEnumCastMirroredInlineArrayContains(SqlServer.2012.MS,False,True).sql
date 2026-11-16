-- SqlServer.2012.MS SqlServer.2012
DECLARE @api NChar(1) -- StringFixedLength
SET     @api = N'M'

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	@api IN ([p].[Gender], N'M')

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

