-- Access.Jet.Odbc AccessODBC
DECLARE @paramCopy Int -- Int32
SET     @paramCopy = 1
DECLARE @p Int -- Int32
SET     @p = 0
DECLARE @p Int -- Int32
SET     @p = 2

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
			[p].[PersonID] = ?
	) AND
	([t1].[PersonID] IN (
		SELECT
			[p_1].[PersonID]
		FROM
			[Person] [p_1]
		WHERE
			[p_1].[PersonID] = ?
	) OR [t1].[PersonID] IN (
		SELECT
			[p_2].[PersonID]
		FROM
			[Person] [p_2]
		WHERE
			? <> [p_2].[PersonID]
	))

-- Access.Jet.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 3
DECLARE @paramCopy Int -- Int32
SET     @paramCopy = 2
DECLARE @p Int -- Int32
SET     @p = 3

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
			? <> [p].[PersonID]
	) AND
	([t1].[PersonID] IN (
		SELECT
			[p_1].[PersonID]
		FROM
			[Person] [p_1]
		WHERE
			? = [p_1].[PersonID]
	) OR [t1].[PersonID] IN (
		SELECT
			[p_2].[PersonID]
		FROM
			[Person] [p_2]
		WHERE
			? <> [p_2].[PersonID]
	))

-- Access.Jet.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 4
DECLARE @p Int -- Int32
SET     @p = 2
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
			? <> [p].[PersonID]
	) AND
	([t1].[PersonID] IN (
		SELECT
			[p_1].[PersonID]
		FROM
			[Person] [p_1]
		WHERE
			[p_1].[PersonID] = ?
	) OR [t1].[PersonID] IN (
		SELECT
			[p_2].[PersonID]
		FROM
			[Person] [p_2]
		WHERE
			[p_2].[PersonID] = ?
	))

-- Access.Jet.Odbc AccessODBC
DECLARE @paramCopy Int -- Int32
SET     @paramCopy = 1
DECLARE @p Int -- Int32
SET     @p = 0
DECLARE @p Int -- Int32
SET     @p = 2

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
			[p].[PersonID] = ?
	) AND
	([t1].[PersonID] IN (
		SELECT
			[p_1].[PersonID]
		FROM
			[Person] [p_1]
		WHERE
			[p_1].[PersonID] = ?
	) OR [t1].[PersonID] IN (
		SELECT
			[p_2].[PersonID]
		FROM
			[Person] [p_2]
		WHERE
			? <> [p_2].[PersonID]
	))

-- Access.Jet.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 4
DECLARE @p Int -- Int32
SET     @p = 2
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
			? <> [p].[PersonID]
	) AND
	([t1].[PersonID] IN (
		SELECT
			[p_1].[PersonID]
		FROM
			[Person] [p_1]
		WHERE
			[p_1].[PersonID] = ?
	) OR [t1].[PersonID] IN (
		SELECT
			[p_2].[PersonID]
		FROM
			[Person] [p_2]
		WHERE
			[p_2].[PersonID] = ?
	))

-- Access.Jet.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 3
DECLARE @paramCopy Int -- Int32
SET     @paramCopy = 2
DECLARE @p Int -- Int32
SET     @p = 3

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
			? <> [p].[PersonID]
	) AND
	([t1].[PersonID] IN (
		SELECT
			[p_1].[PersonID]
		FROM
			[Person] [p_1]
		WHERE
			? = [p_1].[PersonID]
	) OR [t1].[PersonID] IN (
		SELECT
			[p_2].[PersonID]
		FROM
			[Person] [p_2]
		WHERE
			? <> [p_2].[PersonID]
	))

