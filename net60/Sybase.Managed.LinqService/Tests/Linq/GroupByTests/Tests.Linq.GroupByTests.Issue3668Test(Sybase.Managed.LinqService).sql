BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 1
DECLARE @name UniVarChar(4) -- String
SET     @name = 'test'
DECLARE @id_1 Integer -- Int32
SET     @id_1 = 2

SELECT
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	([x].[PersonID] = @id AND [x].[LastName] <> @name OR [x].[FirstName] <> @name AND [x].[PersonID] = @id_1)
GROUP BY
	[x].[PersonID]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @LastName UniVarChar(4) -- String
SET     @LastName = 'test'
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 2
DECLARE @ID_1 Integer -- Int32
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
	([x].[PersonID] = @ID AND [x].[LastName] <> @LastName OR [x].[FirstName] <> @LastName AND [x].[PersonID] = @p_1) AND
	[x].[PersonID] = @ID_1

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @LastName UniVarChar(4) -- String
SET     @LastName = 'test'
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 2
DECLARE @ID_1 Integer -- Int32
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
	([x].[PersonID] = @ID AND [x].[LastName] <> @LastName OR [x].[FirstName] <> @LastName AND [x].[PersonID] = @p_1) AND
	[x].[PersonID] = @ID_1

