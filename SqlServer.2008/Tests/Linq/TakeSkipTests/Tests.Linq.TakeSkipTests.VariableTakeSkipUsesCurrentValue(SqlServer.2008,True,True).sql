-- SqlServer.2008
SELECT TOP (1)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008
SELECT TOP (1)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008
SELECT
	[t1].[ID]
FROM
	(
		SELECT
			[p].[PersonID] as [ID],
			ROW_NUMBER() OVER (ORDER BY [p].[PersonID]) as [RN]
		FROM
			[Person] [p]
	) [t1]
WHERE
	[t1].[RN] > 1 AND [t1].[RN] <= 2
ORDER BY
	[t1].[ID]

-- SqlServer.2008
SELECT
	[t1].[ID]
FROM
	(
		SELECT
			[p].[PersonID] as [ID],
			ROW_NUMBER() OVER (ORDER BY [p].[PersonID]) as [RN]
		FROM
			[Person] [p]
	) [t1]
WHERE
	[t1].[RN] > 1
ORDER BY
	[t1].[ID]

-- SqlServer.2008
SELECT
	[t2].[FirstName],
	[t2].[ID],
	[t2].[LastName],
	[t2].[MiddleName],
	[t2].[Gender]
FROM
	(
		SELECT
			[t1].[FirstName],
			[t1].[PersonID] as [ID],
			[t1].[LastName],
			[t1].[MiddleName],
			[t1].[Gender],
			ROW_NUMBER() OVER (ORDER BY [t1].[PersonID]) as [RN]
		FROM
			[Person] [t1]
	) [t2]
WHERE
	[t2].[RN] > 1 AND [t2].[RN] <= 2
ORDER BY
	[t2].[ID]

-- SqlServer.2008
SELECT
	[t2].[FirstName],
	[t2].[ID],
	[t2].[LastName],
	[t2].[MiddleName],
	[t2].[Gender]
FROM
	(
		SELECT
			[t1].[FirstName],
			[t1].[PersonID] as [ID],
			[t1].[LastName],
			[t1].[MiddleName],
			[t1].[Gender],
			ROW_NUMBER() OVER (ORDER BY [t1].[PersonID]) as [RN]
		FROM
			[Person] [t1]
	) [t2]
WHERE
	[t2].[RN] > 1 AND [t2].[RN] <= 2
ORDER BY
	[t2].[ID]

-- SqlServer.2008
SELECT
	[t2].[FirstName],
	[t2].[ID],
	[t2].[LastName],
	[t2].[MiddleName],
	[t2].[Gender]
FROM
	(
		SELECT
			[t1].[FirstName],
			[t1].[PersonID] as [ID],
			[t1].[LastName],
			[t1].[MiddleName],
			[t1].[Gender],
			ROW_NUMBER() OVER (ORDER BY [t1].[PersonID]) as [RN]
		FROM
			[Person] [t1]
	) [t2]
WHERE
	[t2].[RN] > 1 AND [t2].[RN] <= 2
ORDER BY
	[t2].[ID]

-- SqlServer.2008
SELECT
	[t1].[ID]
FROM
	(
		SELECT
			[p].[PersonID] as [ID],
			ROW_NUMBER() OVER (ORDER BY [p].[PersonID]) as [RN]
		FROM
			[Person] [p]
	) [t1]
WHERE
	[t1].[RN] > 2
ORDER BY
	[t1].[ID]

-- SqlServer.2008
SELECT TOP (1)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008
SELECT TOP (2)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008
SELECT TOP (2)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008
SELECT
	[t1].[ID]
FROM
	(
		SELECT
			[p].[PersonID] as [ID],
			ROW_NUMBER() OVER (ORDER BY [p].[PersonID]) as [RN]
		FROM
			[Person] [p]
	) [t1]
WHERE
	[t1].[RN] > 2 AND [t1].[RN] <= 3
ORDER BY
	[t1].[ID]

-- SqlServer.2008
SELECT
	[t1].[ID]
FROM
	(
		SELECT
			[p].[PersonID] as [ID],
			ROW_NUMBER() OVER (ORDER BY [p].[PersonID]) as [RN]
		FROM
			[Person] [p]
	) [t1]
WHERE
	[t1].[RN] > 2
ORDER BY
	[t1].[ID]

-- SqlServer.2008
SELECT
	[t2].[FirstName],
	[t2].[ID],
	[t2].[LastName],
	[t2].[MiddleName],
	[t2].[Gender]
FROM
	(
		SELECT
			[t1].[FirstName],
			[t1].[PersonID] as [ID],
			[t1].[LastName],
			[t1].[MiddleName],
			[t1].[Gender],
			ROW_NUMBER() OVER (ORDER BY [t1].[PersonID]) as [RN]
		FROM
			[Person] [t1]
	) [t2]
WHERE
	[t2].[RN] > 2 AND [t2].[RN] <= 3
ORDER BY
	[t2].[ID]

-- SqlServer.2008
SELECT
	[t2].[FirstName],
	[t2].[ID],
	[t2].[LastName],
	[t2].[MiddleName],
	[t2].[Gender]
FROM
	(
		SELECT
			[t1].[FirstName],
			[t1].[PersonID] as [ID],
			[t1].[LastName],
			[t1].[MiddleName],
			[t1].[Gender],
			ROW_NUMBER() OVER (ORDER BY [t1].[PersonID]) as [RN]
		FROM
			[Person] [t1]
	) [t2]
WHERE
	[t2].[RN] > 2 AND [t2].[RN] <= 3
ORDER BY
	[t2].[ID]

-- SqlServer.2008
SELECT
	[t2].[FirstName],
	[t2].[ID],
	[t2].[LastName],
	[t2].[MiddleName],
	[t2].[Gender]
FROM
	(
		SELECT
			[t1].[FirstName],
			[t1].[PersonID] as [ID],
			[t1].[LastName],
			[t1].[MiddleName],
			[t1].[Gender],
			ROW_NUMBER() OVER (ORDER BY [t1].[PersonID]) as [RN]
		FROM
			[Person] [t1]
	) [t2]
WHERE
	[t2].[RN] > 2 AND [t2].[RN] <= 3
ORDER BY
	[t2].[ID]

-- SqlServer.2008
SELECT
	[t1].[ID]
FROM
	(
		SELECT
			[p].[PersonID] as [ID],
			ROW_NUMBER() OVER (ORDER BY [p].[PersonID]) as [RN]
		FROM
			[Person] [p]
	) [t1]
WHERE
	[t1].[RN] > 3
ORDER BY
	[t1].[ID]

-- SqlServer.2008
SELECT TOP (2)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008
SELECT TOP (3)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008
SELECT TOP (3)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008
SELECT
	[t1].[ID]
FROM
	(
		SELECT
			[p].[PersonID] as [ID],
			ROW_NUMBER() OVER (ORDER BY [p].[PersonID]) as [RN]
		FROM
			[Person] [p]
	) [t1]
WHERE
	[t1].[RN] > 3 AND [t1].[RN] <= 4
ORDER BY
	[t1].[ID]

-- SqlServer.2008
SELECT
	[t1].[ID]
FROM
	(
		SELECT
			[p].[PersonID] as [ID],
			ROW_NUMBER() OVER (ORDER BY [p].[PersonID]) as [RN]
		FROM
			[Person] [p]
	) [t1]
WHERE
	[t1].[RN] > 3
ORDER BY
	[t1].[ID]

-- SqlServer.2008
SELECT
	[t2].[FirstName],
	[t2].[ID],
	[t2].[LastName],
	[t2].[MiddleName],
	[t2].[Gender]
FROM
	(
		SELECT
			[t1].[FirstName],
			[t1].[PersonID] as [ID],
			[t1].[LastName],
			[t1].[MiddleName],
			[t1].[Gender],
			ROW_NUMBER() OVER (ORDER BY [t1].[PersonID]) as [RN]
		FROM
			[Person] [t1]
	) [t2]
WHERE
	[t2].[RN] > 3 AND [t2].[RN] <= 4
ORDER BY
	[t2].[ID]

-- SqlServer.2008
SELECT
	[t2].[FirstName],
	[t2].[ID],
	[t2].[LastName],
	[t2].[MiddleName],
	[t2].[Gender]
FROM
	(
		SELECT
			[t1].[FirstName],
			[t1].[PersonID] as [ID],
			[t1].[LastName],
			[t1].[MiddleName],
			[t1].[Gender],
			ROW_NUMBER() OVER (ORDER BY [t1].[PersonID]) as [RN]
		FROM
			[Person] [t1]
	) [t2]
WHERE
	[t2].[RN] > 3 AND [t2].[RN] <= 4
ORDER BY
	[t2].[ID]

-- SqlServer.2008
SELECT
	[t2].[FirstName],
	[t2].[ID],
	[t2].[LastName],
	[t2].[MiddleName],
	[t2].[Gender]
FROM
	(
		SELECT
			[t1].[FirstName],
			[t1].[PersonID] as [ID],
			[t1].[LastName],
			[t1].[MiddleName],
			[t1].[Gender],
			ROW_NUMBER() OVER (ORDER BY [t1].[PersonID]) as [RN]
		FROM
			[Person] [t1]
	) [t2]
WHERE
	[t2].[RN] > 3 AND [t2].[RN] <= 4
ORDER BY
	[t2].[ID]

-- SqlServer.2008
SELECT
	[t1].[ID]
FROM
	(
		SELECT
			[p].[PersonID] as [ID],
			ROW_NUMBER() OVER (ORDER BY [p].[PersonID]) as [RN]
		FROM
			[Person] [p]
	) [t1]
WHERE
	[t1].[RN] > 4
ORDER BY
	[t1].[ID]

-- SqlServer.2008
SELECT TOP (3)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

