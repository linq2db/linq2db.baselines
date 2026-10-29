-- SqlServer.2005
DECLARE @Count Int -- Int32
SET     @Count = 0

SELECT TOP (@Count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
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

-- SqlServer.2005
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

-- SqlServer.2005
DECLARE @count Int -- Int32
SET     @count = 0

SELECT TOP (@count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
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

-- SqlServer.2005
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

-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 0

SELECT TOP (@take)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 0

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
	[t1].[RN] > @skip
ORDER BY
	[t1].[ID]

-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 1

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
	[t1].[RN] > @skip AND [t1].[RN] <= (@skip + @take)
ORDER BY
	[t1].[ID]

-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 0

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
	[t2].[RN] > @skip AND [t2].[RN] <= (@skip + 1)
ORDER BY
	[t2].[ID]

-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 0

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
	[t2].[RN] > @skip AND [t2].[RN] <= (@skip + 1)
ORDER BY
	[t2].[ID]

-- SqlServer.2005
DECLARE @Count Int -- Int32
SET     @Count = 2

SELECT TOP (@Count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
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

-- SqlServer.2005
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

-- SqlServer.2005
DECLARE @count Int -- Int32
SET     @count = 2

SELECT TOP (@count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
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

-- SqlServer.2005
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

-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 2

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
	[t1].[RN] > @skip
ORDER BY
	[t1].[ID]

-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 2
DECLARE @take Int -- Int32
SET     @take = 3

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
	[t1].[RN] > @skip AND [t1].[RN] <= (@skip + @take)
ORDER BY
	[t1].[ID]

-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 2

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
	[t2].[RN] > @skip AND [t2].[RN] <= (@skip + 1)
ORDER BY
	[t2].[ID]

-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 2

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
	[t2].[RN] > @skip AND [t2].[RN] <= (@skip + 1)
ORDER BY
	[t2].[ID]

-- SqlServer.2005
DECLARE @Count Int -- Int32
SET     @Count = 0

SELECT TOP (@Count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
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

-- SqlServer.2005
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

-- SqlServer.2005
DECLARE @count Int -- Int32
SET     @count = 0

SELECT TOP (@count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
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

-- SqlServer.2005
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

-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 0

SELECT TOP (@take)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 0

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
	[t1].[RN] > @skip
ORDER BY
	[t1].[ID]

-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 1

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
	[t1].[RN] > @skip AND [t1].[RN] <= (@skip + @take)
ORDER BY
	[t1].[ID]

-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 0

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
	[t2].[RN] > @skip AND [t2].[RN] <= (@skip + 1)
ORDER BY
	[t2].[ID]

-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 0

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
	[t2].[RN] > @skip AND [t2].[RN] <= (@skip + 1)
ORDER BY
	[t2].[ID]

-- SqlServer.2005
DECLARE @Count Int -- Int32
SET     @Count = 1

SELECT TOP (@Count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
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

-- SqlServer.2005
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

-- SqlServer.2005
DECLARE @count Int -- Int32
SET     @count = 1

SELECT TOP (@count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
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

-- SqlServer.2005
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

-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 1

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
	[t1].[RN] > @skip
ORDER BY
	[t1].[ID]

-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 2

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
	[t1].[RN] > @skip AND [t1].[RN] <= (@skip + @take)
ORDER BY
	[t1].[ID]

-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 1

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
	[t2].[RN] > @skip AND [t2].[RN] <= (@skip + 1)
ORDER BY
	[t2].[ID]

-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 1

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
	[t2].[RN] > @skip AND [t2].[RN] <= (@skip + 1)
ORDER BY
	[t2].[ID]

-- SqlServer.2005
DECLARE @Count Int -- Int32
SET     @Count = 3

SELECT TOP (@Count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
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

-- SqlServer.2005
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

-- SqlServer.2005
DECLARE @count Int -- Int32
SET     @count = 3

SELECT TOP (@count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
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

-- SqlServer.2005
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

-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 3

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
	[t1].[RN] > @skip
ORDER BY
	[t1].[ID]

-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 3
DECLARE @take Int -- Int32
SET     @take = 4

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
	[t1].[RN] > @skip AND [t1].[RN] <= (@skip + @take)
ORDER BY
	[t1].[ID]

-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 3

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
	[t2].[RN] > @skip AND [t2].[RN] <= (@skip + 1)
ORDER BY
	[t2].[ID]

-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 3

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
	[t2].[RN] > @skip AND [t2].[RN] <= (@skip + 1)
ORDER BY
	[t2].[ID]

-- SqlServer.2005
DECLARE @Count Int -- Int32
SET     @Count = 0

SELECT TOP (@Count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
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

-- SqlServer.2005
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

-- SqlServer.2005
DECLARE @count Int -- Int32
SET     @count = 0

SELECT TOP (@count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
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

-- SqlServer.2005
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

-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 0

SELECT TOP (@take)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 0

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
	[t1].[RN] > @skip
ORDER BY
	[t1].[ID]

-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 1

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
	[t1].[RN] > @skip AND [t1].[RN] <= (@skip + @take)
ORDER BY
	[t1].[ID]

-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 0

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
	[t2].[RN] > @skip AND [t2].[RN] <= (@skip + 1)
ORDER BY
	[t2].[ID]

-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 0

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
	[t2].[RN] > @skip AND [t2].[RN] <= (@skip + 1)
ORDER BY
	[t2].[ID]

