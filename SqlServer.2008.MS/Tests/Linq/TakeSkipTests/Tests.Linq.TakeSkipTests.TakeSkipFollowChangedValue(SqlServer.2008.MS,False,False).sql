-- SqlServer.2008.MS SqlServer.2008
DECLARE @Count Int -- Int32
SET     @Count = 0

SELECT TOP (@Count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Count Int -- Int32
SET     @Count = 0

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
	[t1].[RN] > @Count
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Count Int -- Int32
SET     @Count = 0
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
	[t1].[RN] > @Count AND [t1].[RN] <= (@Count + @p)
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @count Int -- Int32
SET     @count = 0

SELECT TOP (@count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @count Int -- Int32
SET     @count = 0

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
	[t1].[RN] > @count
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Count Int -- Int32
SET     @Count = 0

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
	[t2].[RN] > @Count AND [t2].[RN] <= (@Count + 1)
ORDER BY
	[t2].[ID]

-- SqlServer.2008.MS SqlServer.2008
SELECT TOP (0)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008.MS SqlServer.2008
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
	[t1].[RN] > 0
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
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
	[t1].[RN] > 0 AND [t1].[RN] <= 1
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
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
	[t2].[RN] > 0 AND [t2].[RN] <= 1
ORDER BY
	[t2].[ID]

-- SqlServer.2008.MS SqlServer.2008
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
	[t2].[RN] > 0 AND [t2].[RN] <= 1
ORDER BY
	[t2].[ID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Count Int -- Int32
SET     @Count = 2

SELECT TOP (@Count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Count Int -- Int32
SET     @Count = 2

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
	[t1].[RN] > @Count
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Count Int -- Int32
SET     @Count = 2
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
	[t1].[RN] > @Count AND [t1].[RN] <= (@Count + @p)
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @count Int -- Int32
SET     @count = 2

SELECT TOP (@count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @count Int -- Int32
SET     @count = 2

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
	[t1].[RN] > @count
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Count Int -- Int32
SET     @Count = 2

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
	[t2].[RN] > @Count AND [t2].[RN] <= (@Count + 1)
ORDER BY
	[t2].[ID]

-- SqlServer.2008.MS SqlServer.2008
SELECT TOP (2)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008.MS SqlServer.2008
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

-- SqlServer.2008.MS SqlServer.2008
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
	[t1].[RN] > 2 AND [t1].[RN] <= 5
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
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

-- SqlServer.2008.MS SqlServer.2008
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

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Count Int -- Int32
SET     @Count = 0

SELECT TOP (@Count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Count Int -- Int32
SET     @Count = 0

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
	[t1].[RN] > @Count
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Count Int -- Int32
SET     @Count = 0
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
	[t1].[RN] > @Count AND [t1].[RN] <= (@Count + @p)
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @count Int -- Int32
SET     @count = 0

SELECT TOP (@count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @count Int -- Int32
SET     @count = 0

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
	[t1].[RN] > @count
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Count Int -- Int32
SET     @Count = 0

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
	[t2].[RN] > @Count AND [t2].[RN] <= (@Count + 1)
ORDER BY
	[t2].[ID]

-- SqlServer.2008.MS SqlServer.2008
SELECT TOP (0)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008.MS SqlServer.2008
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
	[t1].[RN] > 0
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
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
	[t1].[RN] > 0 AND [t1].[RN] <= 1
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
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
	[t2].[RN] > 0 AND [t2].[RN] <= 1
ORDER BY
	[t2].[ID]

-- SqlServer.2008.MS SqlServer.2008
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
	[t2].[RN] > 0 AND [t2].[RN] <= 1
ORDER BY
	[t2].[ID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Count Int -- Int32
SET     @Count = 1

SELECT TOP (@Count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Count Int -- Int32
SET     @Count = 1

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
	[t1].[RN] > @Count
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Count Int -- Int32
SET     @Count = 1
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
	[t1].[RN] > @Count AND [t1].[RN] <= (@Count + @p)
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @count Int -- Int32
SET     @count = 1

SELECT TOP (@count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @count Int -- Int32
SET     @count = 1

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
	[t1].[RN] > @count
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Count Int -- Int32
SET     @Count = 1

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
	[t2].[RN] > @Count AND [t2].[RN] <= (@Count + 1)
ORDER BY
	[t2].[ID]

-- SqlServer.2008.MS SqlServer.2008
SELECT TOP (1)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008.MS SqlServer.2008
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

-- SqlServer.2008.MS SqlServer.2008
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

-- SqlServer.2008.MS SqlServer.2008
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

-- SqlServer.2008.MS SqlServer.2008
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

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Count Int -- Int32
SET     @Count = 3

SELECT TOP (@Count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Count Int -- Int32
SET     @Count = 3

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
	[t1].[RN] > @Count
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Count Int -- Int32
SET     @Count = 3
DECLARE @p Int -- Int32
SET     @p = 4

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
	[t1].[RN] > @Count AND [t1].[RN] <= (@Count + @p)
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @count Int -- Int32
SET     @count = 3

SELECT TOP (@count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @count Int -- Int32
SET     @count = 3

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
	[t1].[RN] > @count
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Count Int -- Int32
SET     @Count = 3

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
	[t2].[RN] > @Count AND [t2].[RN] <= (@Count + 1)
ORDER BY
	[t2].[ID]

-- SqlServer.2008.MS SqlServer.2008
SELECT TOP (3)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008.MS SqlServer.2008
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

-- SqlServer.2008.MS SqlServer.2008
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
	[t1].[RN] > 3 AND [t1].[RN] <= 7
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
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

-- SqlServer.2008.MS SqlServer.2008
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

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Count Int -- Int32
SET     @Count = 0

SELECT TOP (@Count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Count Int -- Int32
SET     @Count = 0

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
	[t1].[RN] > @Count
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Count Int -- Int32
SET     @Count = 0
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
	[t1].[RN] > @Count AND [t1].[RN] <= (@Count + @p)
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @count Int -- Int32
SET     @count = 0

SELECT TOP (@count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @count Int -- Int32
SET     @count = 0

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
	[t1].[RN] > @count
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Count Int -- Int32
SET     @Count = 0

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
	[t2].[RN] > @Count AND [t2].[RN] <= (@Count + 1)
ORDER BY
	[t2].[ID]

-- SqlServer.2008.MS SqlServer.2008
SELECT TOP (0)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008.MS SqlServer.2008
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
	[t1].[RN] > 0
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
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
	[t1].[RN] > 0 AND [t1].[RN] <= 1
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
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
	[t2].[RN] > 0 AND [t2].[RN] <= 1
ORDER BY
	[t2].[ID]

-- SqlServer.2008.MS SqlServer.2008
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
	[t2].[RN] > 0 AND [t2].[RN] <= 1
ORDER BY
	[t2].[ID]

