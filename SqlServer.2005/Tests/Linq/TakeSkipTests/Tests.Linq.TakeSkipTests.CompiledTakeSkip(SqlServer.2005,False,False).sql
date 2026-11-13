-- SqlServer.2005
SELECT TOP (1)
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
ORDER BY
	[t1].[PersonID]

-- SqlServer.2005
SELECT TOP (1)
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
ORDER BY
	[t1].[PersonID]

-- SqlServer.2005
SELECT TOP (2)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
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
	[t1].[RN] > 1 AND [t1].[RN] <= 3
ORDER BY
	[t1].[ID]

-- SqlServer.2005
SELECT TOP (1)
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
ORDER BY
	[t1].[PersonID]

-- SqlServer.2005
SELECT TOP (1)
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
ORDER BY
	[t1].[PersonID]

-- SqlServer.2005
SELECT TOP (2)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
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
	[t1].[RN] > 1 AND [t1].[RN] <= 3
ORDER BY
	[t1].[ID]

-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 0

SELECT TOP (@p)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 0

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
	[t1].[RN] > @p
ORDER BY
	[t1].[ID]

-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 0
DECLARE @p_1 Int -- Int32
SET     @p_1 = 1

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
	[t1].[RN] > @p AND [t1].[RN] <= (@p + @p_1)
ORDER BY
	[t1].[ID]

-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 0

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
	[t2].[RN] > @p AND [t2].[RN] <= (@p + 1)
ORDER BY
	[t2].[ID]

-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 2

SELECT TOP (@p)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 2

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
	[t1].[RN] > @p
ORDER BY
	[t1].[ID]

-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 2
DECLARE @p_1 Int -- Int32
SET     @p_1 = 3

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
	[t1].[RN] > @p AND [t1].[RN] <= (@p + @p_1)
ORDER BY
	[t1].[ID]

-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 2

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
	[t2].[RN] > @p AND [t2].[RN] <= (@p + 1)
ORDER BY
	[t2].[ID]

-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 0

SELECT TOP (@p)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 0

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
	[t1].[RN] > @p
ORDER BY
	[t1].[ID]

-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 0
DECLARE @p_1 Int -- Int32
SET     @p_1 = 1

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
	[t1].[RN] > @p AND [t1].[RN] <= (@p + @p_1)
ORDER BY
	[t1].[ID]

-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 0

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
	[t2].[RN] > @p AND [t2].[RN] <= (@p + 1)
ORDER BY
	[t2].[ID]

-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 1

SELECT TOP (@p)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 1

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
	[t1].[RN] > @p
ORDER BY
	[t1].[ID]

-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 1
DECLARE @p_1 Int -- Int32
SET     @p_1 = 2

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
	[t1].[RN] > @p AND [t1].[RN] <= (@p + @p_1)
ORDER BY
	[t1].[ID]

-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 1

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
	[t2].[RN] > @p AND [t2].[RN] <= (@p + 1)
ORDER BY
	[t2].[ID]

-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 3

SELECT TOP (@p)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 3

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
	[t1].[RN] > @p
ORDER BY
	[t1].[ID]

-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 3
DECLARE @p_1 Int -- Int32
SET     @p_1 = 4

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
	[t1].[RN] > @p AND [t1].[RN] <= (@p + @p_1)
ORDER BY
	[t1].[ID]

-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 3

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
	[t2].[RN] > @p AND [t2].[RN] <= (@p + 1)
ORDER BY
	[t2].[ID]

-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 0

SELECT TOP (@p)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 0

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
	[t1].[RN] > @p
ORDER BY
	[t1].[ID]

-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 0
DECLARE @p_1 Int -- Int32
SET     @p_1 = 1

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
	[t1].[RN] > @p AND [t1].[RN] <= (@p + @p_1)
ORDER BY
	[t1].[ID]

-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 0

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
	[t2].[RN] > @p AND [t2].[RN] <= (@p + 1)
ORDER BY
	[t2].[ID]

