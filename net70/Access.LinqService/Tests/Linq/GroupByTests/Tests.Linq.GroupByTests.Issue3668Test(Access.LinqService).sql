BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1
DECLARE @name VarWChar(4) -- String
SET     @name = 'test'
DECLARE @name_1 VarWChar(4) -- String
SET     @name_1 = 'test'
DECLARE @id_1 Integer -- Int32
SET     @id_1 = 2

SELECT
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	([x].[PersonID] = @id AND [x].[LastName] <> @name OR [x].[FirstName] <> @name_1 AND [x].[PersonID] = @id_1)
GROUP BY
	[x].[PersonID]

BeforeExecute
-- Access AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @LastName VarWChar(4) -- String
SET     @LastName = 'test'
DECLARE @LastName_1 VarWChar(4) -- String
SET     @LastName_1 = 'test'
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
	([x].[PersonID] = @ID AND [x].[LastName] <> @LastName OR [x].[FirstName] <> @LastName_1 AND [x].[PersonID] = @p_1) AND
	[x].[PersonID] = @ID_1

BeforeExecute
-- Access AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @LastName VarWChar(4) -- String
SET     @LastName = 'test'
DECLARE @LastName_1 VarWChar(4) -- String
SET     @LastName_1 = 'test'
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
	([x].[PersonID] = @ID AND [x].[LastName] <> @LastName OR [x].[FirstName] <> @LastName_1 AND [x].[PersonID] = @p_1) AND
	[x].[PersonID] = @ID_1

