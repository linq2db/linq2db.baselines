BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1
DECLARE @name NVarChar(4) -- String
SET     @name = 'test'
DECLARE @name_1 NVarChar(4) -- String
SET     @name_1 = 'test'
DECLARE @id_2 Int -- Int32
SET     @id_2 = 2

SELECT
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	([x].[PersonID] = ? AND [x].[LastName] <> ? OR [x].[FirstName] <> ? AND [x].[PersonID] = ?)
GROUP BY
	[x].[PersonID]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @LastName NVarChar(4) -- String
SET     @LastName = 'test'
DECLARE @LastName_1 NVarChar(4) -- String
SET     @LastName_1 = 'test'
DECLARE @p_2 Int -- Int32
SET     @p_2 = 2
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
	([x].[PersonID] = ? AND [x].[LastName] <> ? OR [x].[FirstName] <> ? AND [x].[PersonID] = ?) AND
	[x].[PersonID] = ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @LastName NVarChar(4) -- String
SET     @LastName = 'test'
DECLARE @LastName_1 NVarChar(4) -- String
SET     @LastName_1 = 'test'
DECLARE @p_2 Int -- Int32
SET     @p_2 = 2
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
	([x].[PersonID] = ? AND [x].[LastName] <> ? OR [x].[FirstName] <> ? AND [x].[PersonID] = ?) AND
	[x].[PersonID] = ?

