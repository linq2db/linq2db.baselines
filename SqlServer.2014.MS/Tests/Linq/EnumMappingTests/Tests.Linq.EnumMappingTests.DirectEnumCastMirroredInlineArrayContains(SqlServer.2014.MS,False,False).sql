-- SqlServer.2014.MS SqlServer.2014
DECLARE @api NChar(1) -- StringFixedLength
SET     @api = N'F'

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	@api IN ([p].[Gender])

-- SqlServer.2014.MS SqlServer.2014
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

