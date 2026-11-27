-- SqlCe
SELECT
	CharIndex('x', [p].[FirstName], 2) - 1
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlCe
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlCe
SELECT
	CharIndex('x', [p].[FirstName], 2) - 1
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlCe
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlCe
SELECT
	CharIndex('x', [p].[FirstName], LEN([p].[FirstName] + '.')) - 1
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlCe
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

