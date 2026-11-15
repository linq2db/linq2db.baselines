-- SqlServer.2012.MS SqlServer.2012
DECLARE @Api NChar(1) -- StringFixedLength
SET     @Api = N'F'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	IIF([p].[PersonID] > 2, N'M', N'F') IN (@Api)

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlServer.2012.MS SqlServer.2012
DECLARE @Api NChar(1) -- StringFixedLength
SET     @Api = N'M'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	IIF([p].[PersonID] > 2, N'M', N'F') IN (@Api)

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

