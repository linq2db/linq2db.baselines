-- SqlCe
SELECT
	CharIndex('o', [p].[MiddleName], 2)
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
	CharIndex([p].[MiddleName], [p].[FirstName], 2)
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
	END, [p].[FirstName], 2)
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
	CASE
		WHEN [p].[MiddleName] IS NULL THEN NULL
		ELSE CHARINDEX('o', [p].[FirstName], CASE
			WHEN [p].[MiddleName] IS NULL THEN NULL
			ELSE 1
		END)
	END
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
	[p].[MiddleName] IS NULL
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
DECLARE @start Int -- Int32
SET     @start = 1

SELECT
	CHARINDEX('o', [p].[FirstName], @start)
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
	NULL
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

