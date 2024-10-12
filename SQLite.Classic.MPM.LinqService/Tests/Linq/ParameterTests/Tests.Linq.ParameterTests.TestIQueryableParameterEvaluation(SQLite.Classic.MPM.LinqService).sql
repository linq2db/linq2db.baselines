BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @paramCopy  -- Int32
SET     @paramCopy = 1
DECLARE @paramCopy_1  -- Int32
SET     @paramCopy_1 = 1
DECLARE @paramCopy_2  -- Int32
SET     @paramCopy_2 = 1

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
			[p_1].[PersonID] = @paramCopy_1 - 1
	) OR [t1].[PersonID] IN (
		SELECT
			[p_2].[PersonID]
		FROM
			[Person] [p_2]
		WHERE
			@paramCopy_2 + 1 <> [p_2].[PersonID]
	))

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @paramCopy  -- Int32
SET     @paramCopy = 2
DECLARE @paramCopy_1  -- Int32
SET     @paramCopy_1 = 2
DECLARE @paramCopy_2  -- Int32
SET     @paramCopy_2 = 2

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
			@paramCopy + 1 <> [p].[PersonID]
	) AND
	([t1].[PersonID] IN (
		SELECT
			[p_1].[PersonID]
		FROM
			[Person] [p_1]
		WHERE
			@paramCopy_1 = [p_1].[PersonID]
	) OR [t1].[PersonID] IN (
		SELECT
			[p_2].[PersonID]
		FROM
			[Person] [p_2]
		WHERE
			@paramCopy_2 + 1 <> [p_2].[PersonID]
	))

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @paramCopy  -- Int32
SET     @paramCopy = 3
DECLARE @paramCopy_1  -- Int32
SET     @paramCopy_1 = 3
DECLARE @paramCopy_2  -- Int32
SET     @paramCopy_2 = 3

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
			@paramCopy + 1 <> [p].[PersonID]
	) AND
	([t1].[PersonID] IN (
		SELECT
			[p_1].[PersonID]
		FROM
			[Person] [p_1]
		WHERE
			[p_1].[PersonID] = @paramCopy_1 - 1
	) OR [t1].[PersonID] IN (
		SELECT
			[p_2].[PersonID]
		FROM
			[Person] [p_2]
		WHERE
			[p_2].[PersonID] = @paramCopy_2
	))

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @paramCopy  -- Int32
SET     @paramCopy = 1
DECLARE @paramCopy_1  -- Int32
SET     @paramCopy_1 = 1
DECLARE @paramCopy_2  -- Int32
SET     @paramCopy_2 = 1

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
			[p_1].[PersonID] = @paramCopy_1 - 1
	) OR [t1].[PersonID] IN (
		SELECT
			[p_2].[PersonID]
		FROM
			[Person] [p_2]
		WHERE
			@paramCopy_2 + 1 <> [p_2].[PersonID]
	))

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @paramCopy  -- Int32
SET     @paramCopy = 3
DECLARE @paramCopy_1  -- Int32
SET     @paramCopy_1 = 3
DECLARE @paramCopy_2  -- Int32
SET     @paramCopy_2 = 3

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
			@paramCopy + 1 <> [p].[PersonID]
	) AND
	([t1].[PersonID] IN (
		SELECT
			[p_1].[PersonID]
		FROM
			[Person] [p_1]
		WHERE
			[p_1].[PersonID] = @paramCopy_1 - 1
	) OR [t1].[PersonID] IN (
		SELECT
			[p_2].[PersonID]
		FROM
			[Person] [p_2]
		WHERE
			[p_2].[PersonID] = @paramCopy_2
	))

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @paramCopy  -- Int32
SET     @paramCopy = 2
DECLARE @paramCopy_1  -- Int32
SET     @paramCopy_1 = 2
DECLARE @paramCopy_2  -- Int32
SET     @paramCopy_2 = 2

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
			@paramCopy + 1 <> [p].[PersonID]
	) AND
	([t1].[PersonID] IN (
		SELECT
			[p_1].[PersonID]
		FROM
			[Person] [p_1]
		WHERE
			@paramCopy_1 = [p_1].[PersonID]
	) OR [t1].[PersonID] IN (
		SELECT
			[p_2].[PersonID]
		FROM
			[Person] [p_2]
		WHERE
			@paramCopy_2 + 1 <> [p_2].[PersonID]
	))

