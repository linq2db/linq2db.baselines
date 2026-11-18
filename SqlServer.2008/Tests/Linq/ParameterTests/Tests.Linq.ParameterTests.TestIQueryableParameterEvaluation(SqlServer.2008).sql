-- SqlServer.2008
DECLARE @paramCopy Int -- Int32
SET     @paramCopy = 1
DECLARE @p Int -- Int32
SET     @p = 0
DECLARE @p_1 Int -- Int32
SET     @p_1 = 2

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] IN (
		SELECT
			[p].[PersonID]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = @paramCopy
	) AND
	([t1].[PersonID] IN (
		SELECT
			[p_1].[PersonID]
		FROM
			[Person] [p_1]
		WHERE
			[p_1].[PersonID] = @p
	) OR [t1].[PersonID] IN (
		SELECT
			[p_2].[PersonID]
		FROM
			[Person] [p_2]
		WHERE
			@p_1 <> [p_2].[PersonID]
	))

-- SqlServer.2008
DECLARE @p Int -- Int32
SET     @p = 3
DECLARE @paramCopy Int -- Int32
SET     @paramCopy = 2
DECLARE @p_1 Int -- Int32
SET     @p_1 = 3

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] IN (
		SELECT
			[p].[PersonID]
		FROM
			[Person] [p]
		WHERE
			@p <> [p].[PersonID]
	) AND
	([t1].[PersonID] IN (
		SELECT
			[p_1].[PersonID]
		FROM
			[Person] [p_1]
		WHERE
			@paramCopy = [p_1].[PersonID]
	) OR [t1].[PersonID] IN (
		SELECT
			[p_2].[PersonID]
		FROM
			[Person] [p_2]
		WHERE
			@p_1 <> [p_2].[PersonID]
	))

-- SqlServer.2008
DECLARE @p Int -- Int32
SET     @p = 4
DECLARE @p_1 Int -- Int32
SET     @p_1 = 2
DECLARE @paramCopy Int -- Int32
SET     @paramCopy = 3

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] IN (
		SELECT
			[p].[PersonID]
		FROM
			[Person] [p]
		WHERE
			@p <> [p].[PersonID]
	) AND
	([t1].[PersonID] IN (
		SELECT
			[p_1].[PersonID]
		FROM
			[Person] [p_1]
		WHERE
			[p_1].[PersonID] = @p_1
	) OR [t1].[PersonID] IN (
		SELECT
			[p_2].[PersonID]
		FROM
			[Person] [p_2]
		WHERE
			[p_2].[PersonID] = @paramCopy
	))

-- SqlServer.2008
DECLARE @paramCopy Int -- Int32
SET     @paramCopy = 1
DECLARE @p Int -- Int32
SET     @p = 0
DECLARE @p_1 Int -- Int32
SET     @p_1 = 2

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] IN (
		SELECT
			[p].[PersonID]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = @paramCopy
	) AND
	([t1].[PersonID] IN (
		SELECT
			[p_1].[PersonID]
		FROM
			[Person] [p_1]
		WHERE
			[p_1].[PersonID] = @p
	) OR [t1].[PersonID] IN (
		SELECT
			[p_2].[PersonID]
		FROM
			[Person] [p_2]
		WHERE
			@p_1 <> [p_2].[PersonID]
	))

-- SqlServer.2008
DECLARE @p Int -- Int32
SET     @p = 4
DECLARE @p_1 Int -- Int32
SET     @p_1 = 2
DECLARE @paramCopy Int -- Int32
SET     @paramCopy = 3

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] IN (
		SELECT
			[p].[PersonID]
		FROM
			[Person] [p]
		WHERE
			@p <> [p].[PersonID]
	) AND
	([t1].[PersonID] IN (
		SELECT
			[p_1].[PersonID]
		FROM
			[Person] [p_1]
		WHERE
			[p_1].[PersonID] = @p_1
	) OR [t1].[PersonID] IN (
		SELECT
			[p_2].[PersonID]
		FROM
			[Person] [p_2]
		WHERE
			[p_2].[PersonID] = @paramCopy
	))

-- SqlServer.2008
DECLARE @p Int -- Int32
SET     @p = 3
DECLARE @paramCopy Int -- Int32
SET     @paramCopy = 2
DECLARE @p_1 Int -- Int32
SET     @p_1 = 3

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] IN (
		SELECT
			[p].[PersonID]
		FROM
			[Person] [p]
		WHERE
			@p <> [p].[PersonID]
	) AND
	([t1].[PersonID] IN (
		SELECT
			[p_1].[PersonID]
		FROM
			[Person] [p_1]
		WHERE
			@paramCopy = [p_1].[PersonID]
	) OR [t1].[PersonID] IN (
		SELECT
			[p_2].[PersonID]
		FROM
			[Person] [p_2]
		WHERE
			@p_1 <> [p_2].[PersonID]
	))

