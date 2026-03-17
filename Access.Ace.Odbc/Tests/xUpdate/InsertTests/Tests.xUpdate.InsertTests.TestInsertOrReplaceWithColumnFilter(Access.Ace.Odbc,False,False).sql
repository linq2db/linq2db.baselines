-- Access.Ace.Odbc AccessODBC
DECLARE @FirstName NVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName NVarChar(15) -- String
SET     @MiddleName = 'som middle name'
DECLARE @ID Int -- Int32
SET     @ID = 0

UPDATE
	[TestInsertOrReplaceTable] [t1]
SET
	[t1].[FirstName] = ?,
	[t1].[LastName] = ?,
	[t1].[MiddleName] = ?
WHERE
	[t1].[ID] = ?

-- Access.Ace.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 0
DECLARE @FirstName NVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName NVarChar(15) -- String
SET     @MiddleName = 'som middle name'

INSERT INTO [TestInsertOrReplaceTable]
(
	[ID],
	[FirstName],
	[LastName],
	[MiddleName]
)
VALUES
(
	?,
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @FirstName NVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'

SELECT TOP 1
	[x].[ID],
	[x].[FirstName],
	[x].[LastName],
	[x].[MiddleName]
FROM
	[TestInsertOrReplaceTable] [x]
WHERE
	[x].[FirstName] = ?

-- Access.Ace.Odbc AccessODBC
DECLARE @FirstName NVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @ID Int -- Int32
SET     @ID = 0

UPDATE
	[TestInsertOrReplaceTable] [t1]
SET
	[t1].[FirstName] = ?,
	[t1].[LastName] = ?
WHERE
	[t1].[ID] = ?

-- Access.Ace.Odbc AccessODBC
DECLARE @FirstName NVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'

SELECT TOP 1
	[x].[ID],
	[x].[FirstName],
	[x].[LastName],
	[x].[MiddleName]
FROM
	[TestInsertOrReplaceTable] [x]
WHERE
	[x].[FirstName] = ?

