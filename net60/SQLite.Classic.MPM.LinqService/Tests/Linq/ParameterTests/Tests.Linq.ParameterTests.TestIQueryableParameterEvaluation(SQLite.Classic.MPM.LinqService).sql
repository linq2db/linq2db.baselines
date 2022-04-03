BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @paramCopy  -- Int32
SET     @paramCopy = 1
DECLARE @ID  -- Int32
SET     @ID = 0
DECLARE @ID_1  -- Int32
SET     @ID_1 = 2

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = @paramCopy AND [p].[PersonID] = [_].[PersonID]
	) AND
	(EXISTS(
		SELECT
			*
		FROM
			[Person] [p_1]
		WHERE
			[p_1].[PersonID] = @ID AND [p_1].[PersonID] = [_].[PersonID]
	) OR EXISTS(
		SELECT
			*
		FROM
			[Person] [p_2]
		WHERE
			@ID_1 <> [p_2].[PersonID] AND [p_2].[PersonID] = [_].[PersonID]
	))

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 3
DECLARE @paramCopy  -- Int32
SET     @paramCopy = 2
DECLARE @ID_1  -- Int32
SET     @ID_1 = 3

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [p]
		WHERE
			@ID <> [p].[PersonID] AND [p].[PersonID] = [_].[PersonID]
	) AND
	(EXISTS(
		SELECT
			*
		FROM
			[Person] [p_1]
		WHERE
			@paramCopy = [p_1].[PersonID] AND [p_1].[PersonID] = [_].[PersonID]
	) OR EXISTS(
		SELECT
			*
		FROM
			[Person] [p_2]
		WHERE
			@ID_1 <> [p_2].[PersonID] AND [p_2].[PersonID] = [_].[PersonID]
	))

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 4
DECLARE @ID_1  -- Int32
SET     @ID_1 = 2
DECLARE @paramCopy  -- Int32
SET     @paramCopy = 3

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [p]
		WHERE
			@ID <> [p].[PersonID] AND [p].[PersonID] = [_].[PersonID]
	) AND
	(EXISTS(
		SELECT
			*
		FROM
			[Person] [p_1]
		WHERE
			[p_1].[PersonID] = @ID_1 AND [p_1].[PersonID] = [_].[PersonID]
	) OR EXISTS(
		SELECT
			*
		FROM
			[Person] [p_2]
		WHERE
			[p_2].[PersonID] = @paramCopy AND [p_2].[PersonID] = [_].[PersonID]
	))

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @paramCopy  -- Int32
SET     @paramCopy = 1
DECLARE @ID  -- Int32
SET     @ID = 0
DECLARE @ID_1  -- Int32
SET     @ID_1 = 2

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = @paramCopy AND [p].[PersonID] = [_].[PersonID]
	) AND
	(EXISTS(
		SELECT
			*
		FROM
			[Person] [p_1]
		WHERE
			[p_1].[PersonID] = @ID AND [p_1].[PersonID] = [_].[PersonID]
	) OR EXISTS(
		SELECT
			*
		FROM
			[Person] [p_2]
		WHERE
			@ID_1 <> [p_2].[PersonID] AND [p_2].[PersonID] = [_].[PersonID]
	))

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 4
DECLARE @ID_1  -- Int32
SET     @ID_1 = 2
DECLARE @paramCopy  -- Int32
SET     @paramCopy = 3

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [p]
		WHERE
			@ID <> [p].[PersonID] AND [p].[PersonID] = [_].[PersonID]
	) AND
	(EXISTS(
		SELECT
			*
		FROM
			[Person] [p_1]
		WHERE
			[p_1].[PersonID] = @ID_1 AND [p_1].[PersonID] = [_].[PersonID]
	) OR EXISTS(
		SELECT
			*
		FROM
			[Person] [p_2]
		WHERE
			[p_2].[PersonID] = @paramCopy AND [p_2].[PersonID] = [_].[PersonID]
	))

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 3
DECLARE @paramCopy  -- Int32
SET     @paramCopy = 2
DECLARE @ID_1  -- Int32
SET     @ID_1 = 3

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [p]
		WHERE
			@ID <> [p].[PersonID] AND [p].[PersonID] = [_].[PersonID]
	) AND
	(EXISTS(
		SELECT
			*
		FROM
			[Person] [p_1]
		WHERE
			@paramCopy = [p_1].[PersonID] AND [p_1].[PersonID] = [_].[PersonID]
	) OR EXISTS(
		SELECT
			*
		FROM
			[Person] [p_2]
		WHERE
			@ID_1 <> [p_2].[PersonID] AND [p_2].[PersonID] = [_].[PersonID]
	))

