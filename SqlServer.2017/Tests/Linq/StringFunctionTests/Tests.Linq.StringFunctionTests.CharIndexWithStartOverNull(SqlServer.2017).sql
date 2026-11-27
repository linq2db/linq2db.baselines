-- SqlServer.2017
SELECT
	CharIndex(N'o', [p].[MiddleName], 2)
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2017
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlServer.2017
SELECT
	CharIndex([p].[MiddleName], [p].[FirstName], 2)
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2017
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlServer.2017
SELECT
	CharIndex(IIF([p].[MiddleName] IS NULL, NULL, N'o'), [p].[FirstName], 2)
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2017
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlServer.2017
SELECT
	CharIndex(N'o', [p].[FirstName], IIF([p].[MiddleName] IS NULL, NULL, 1))
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2017
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlServer.2017
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[MiddleName] IS NULL
ORDER BY
	[p].[PersonID]

-- SqlServer.2017
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlServer.2017
DECLARE @start Int -- Int32
SET     @start = 1

SELECT
	CharIndex(N'o', [p].[FirstName], @start)
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2017
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlServer.2017
DECLARE @nullValuedStart Int -- Int32
SET     @nullValuedStart = NULL

SELECT
	CharIndex(N'o', [p].[FirstName], @nullValuedStart)
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2017
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

