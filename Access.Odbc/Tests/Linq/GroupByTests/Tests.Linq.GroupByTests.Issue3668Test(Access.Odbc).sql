BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1
DECLARE @name NVarChar(4) -- String
SET     @name = 'test'
DECLARE @name NVarChar(4) -- String
SET     @name = 'test'
DECLARE @id Int -- Int32
SET     @id = 2

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
DECLARE @LastName NVarChar(4) -- String
SET     @LastName = 'test'
DECLARE @Parameter1 Int -- Int32
SET     @Parameter1 = 2
DECLARE @ID Int -- Int32
SET     @ID = 1

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
DECLARE @LastName NVarChar(4) -- String
SET     @LastName = 'test'
DECLARE @Parameter1 Int -- Int32
SET     @Parameter1 = 2
DECLARE @ID Int -- Int32
SET     @ID = 2

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

