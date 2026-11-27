-- SqlServer.2005
SELECT
	CharIndex(N'o', [p].[MiddleName], 2)
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlServer.2005
SELECT
	CharIndex([p].[MiddleName], [p].[FirstName], 2)
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlServer.2005
SELECT
	CharIndex(CASE
		WHEN [p].[MiddleName] IS NULL THEN NULL
		ELSE N'o'
	END, [p].[FirstName], 2)
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlServer.2005
SELECT
	CharIndex(N'o', [p].[FirstName], CASE
		WHEN [p].[MiddleName] IS NULL THEN NULL
		ELSE 1
	END)
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlServer.2005
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[MiddleName] IS NULL
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlServer.2005
DECLARE @start Int -- Int32
SET     @start = 1

SELECT
	CharIndex(N'o', [p].[FirstName], @start)
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlServer.2005
DECLARE @nullValuedStart Int -- Int32
SET     @nullValuedStart = NULL

SELECT
	CharIndex(N'o', [p].[FirstName], @nullValuedStart)
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

