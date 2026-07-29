-- SqlServer.2025.MS SqlServer.2025
-- Batch 1
-- table = 
SELECT
	[m_1].[PersonID],
	[d].[PersonID]
FROM
	[Person] [m_1]
		INNER JOIN [Person] [d] ON [d].[PersonID] > [m_1].[PersonID]
WHERE
	[m_1].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@table [x]
	)

-- Batch 2
-- table = 
SELECT
	[p1].[PersonID]
FROM
	[Person] [p1]
WHERE
	[p1].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@table [x]
	)
-- SqlServer.2025.MS SqlServer.2025
-- Batch 1
-- table = 
SELECT
	[m_1].[PersonID],
	[d].[PersonID]
FROM
	[Person] [m_1]
		INNER JOIN [Person] [d] ON [d].[PersonID] > [m_1].[PersonID]
WHERE
	[m_1].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@table [x]
	)

-- Batch 2
-- table = 
SELECT
	[p1].[PersonID]
FROM
	[Person] [p1]
WHERE
	[p1].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@table [x]
	)
-- SqlServer.2025.MS SqlServer.2025
-- Batch 1
-- table = 
SELECT
	[m_1].[PersonID],
	[d].[PersonID]
FROM
	[Person] [m_1]
		INNER JOIN [Person] [d] ON [d].[PersonID] > [m_1].[PersonID]
WHERE
	[m_1].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@table [x]
	)

-- Batch 2
-- table = 
SELECT
	[p1].[PersonID]
FROM
	[Person] [p1]
WHERE
	[p1].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@table [x]
	)
-- SqlServer.2025.MS SqlServer.2025
-- Batch 1
-- table = 
SELECT
	[m_1].[PersonID],
	[d].[PersonID]
FROM
	[Person] [m_1]
		INNER JOIN [Person] [d] ON [d].[PersonID] > [m_1].[PersonID]
WHERE
	[m_1].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@table [x]
	)

-- Batch 2
-- table = 
SELECT
	[p1].[PersonID]
FROM
	[Person] [p1]
WHERE
	[p1].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@table [x]
	)
