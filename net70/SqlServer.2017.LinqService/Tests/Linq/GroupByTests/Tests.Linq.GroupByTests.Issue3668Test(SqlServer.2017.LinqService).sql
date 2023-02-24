BeforeExecute
-- SqlServer.2017
DECLARE @id Int -- Int32
SET     @id = 1
DECLARE @name NVarChar(4000) -- String
SET     @name = N'test'
DECLARE @id_1 Int -- Int32
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
-- SqlServer.2017
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'test'
DECLARE @p_1 Int -- Int32
SET     @p_1 = 2
DECLARE @ID_1 Int -- Int32
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
-- SqlServer.2017
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'test'
DECLARE @p_1 Int -- Int32
SET     @p_1 = 2
DECLARE @ID_1 Int -- Int32
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

