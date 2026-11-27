-- SqlCe
SELECT
	CharIndex('o', [p].[MiddleName])
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
	CharIndex([p].[MiddleName], [p].[FirstName])
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
	CharIndex(CASE
		WHEN [p].[MiddleName] IS NULL THEN NULL
		ELSE 'o'
	END, [p].[FirstName])
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
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	CharIndex('o', [p].[MiddleName]) = 0
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

