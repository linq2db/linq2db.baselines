-- SqlServer.2008.MS SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @n Int -- Int32
SET     @n = 1

SELECT TOP (@n)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 1
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

-- SqlServer.2008.MS SqlServer.2008
DECLARE @n Int -- Int32
SET     @n = 1

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
	[t1].[RN] > @n
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
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

-- SqlServer.2008.MS SqlServer.2008
DECLARE @n Int -- Int32
SET     @n = 1

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
	[t2].[RN] > @n AND [t2].[RN] <= (@n + 1)
ORDER BY
	[t2].[ID]

-- SqlServer.2008.MS SqlServer.2008
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

-- SqlServer.2008.MS SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @skip_1 Int -- Int32
SET     @skip_1 = 1

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
	[t1].[RN] > @skip + @skip_1
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @n Int -- Int32
SET     @n = 2

SELECT TOP (@n)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 2
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

-- SqlServer.2008.MS SqlServer.2008
DECLARE @n Int -- Int32
SET     @n = 2

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
	[t1].[RN] > @n
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
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

-- SqlServer.2008.MS SqlServer.2008
DECLARE @n Int -- Int32
SET     @n = 2

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
	[t2].[RN] > @n AND [t2].[RN] <= (@n + 1)
ORDER BY
	[t2].[ID]

-- SqlServer.2008.MS SqlServer.2008
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

-- SqlServer.2008.MS SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @skip_1 Int -- Int32
SET     @skip_1 = 2

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
	[t1].[RN] > @skip + @skip_1
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @n Int -- Int32
SET     @n = 3

SELECT TOP (@n)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 3
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

-- SqlServer.2008.MS SqlServer.2008
DECLARE @n Int -- Int32
SET     @n = 3

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
	[t1].[RN] > @n
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
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

-- SqlServer.2008.MS SqlServer.2008
DECLARE @n Int -- Int32
SET     @n = 3

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
	[t2].[RN] > @n AND [t2].[RN] <= (@n + 1)
ORDER BY
	[t2].[ID]

-- SqlServer.2008.MS SqlServer.2008
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

-- SqlServer.2008.MS SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @skip_1 Int -- Int32
SET     @skip_1 = 3

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
	[t1].[RN] > @skip + @skip_1
ORDER BY
	[t1].[ID]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

