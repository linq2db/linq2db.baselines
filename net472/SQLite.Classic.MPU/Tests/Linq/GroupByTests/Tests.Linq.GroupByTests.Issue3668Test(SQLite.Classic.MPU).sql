BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1
DECLARE @name NVarChar(4) -- String
SET     @name = 'test'
DECLARE @id_2  -- Int32
SET     @id_2 = 2

SELECT
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	([x].[PersonID] = @id AND [x].[LastName] <> @name OR [x].[FirstName] <> @name AND [x].[PersonID] = @id_2)
GROUP BY
	[x].[PersonID]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @LastName NVarChar(4) -- String
SET     @LastName = 'test'
DECLARE @p_2  -- Int32
SET     @p_2 = 2
DECLARE @ID_1  -- Int32
SET     @ID_1 = 1

SELECT
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	([x].[PersonID] = @ID AND [x].[LastName] <> @LastName OR [x].[FirstName] <> @LastName AND [x].[PersonID] = @p_2) AND
	[x].[PersonID] = @ID_1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @LastName NVarChar(4) -- String
SET     @LastName = 'test'
DECLARE @p_2  -- Int32
SET     @p_2 = 2
DECLARE @ID_1  -- Int32
SET     @ID_1 = 2

SELECT
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	([x].[PersonID] = @ID AND [x].[LastName] <> @LastName OR [x].[FirstName] <> @LastName AND [x].[PersonID] = @p_2) AND
	[x].[PersonID] = @ID_1

