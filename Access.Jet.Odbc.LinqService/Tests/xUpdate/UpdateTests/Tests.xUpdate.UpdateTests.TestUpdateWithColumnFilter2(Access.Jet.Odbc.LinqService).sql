BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @FirstName NVarChar(18) -- String
SET     @FirstName = 'UpdateColumnFilter'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @FirstName NVarChar(18) -- String
SET     @FirstName = 'UpdateColumnFilter'

SELECT TOP 2
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @FirstName NVarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @ID Int -- Int32
SET     @ID = 5

UPDATE
	[Person] [t1]
SET
	[t1].[FirstName] = ?
WHERE
	[t1].[PersonID] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 5

SELECT TOP 2
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	[x].[PersonID] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @FirstName NVarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @LastName NVarChar(25) -- String
SET     @LastName = 'UpdateColumnFilterUpdated'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'
DECLARE @ID Int -- Int32
SET     @ID = 5

UPDATE
	[Person] [t1]
SET
	[t1].[FirstName] = ?,
	[t1].[LastName] = ?,
	[t1].[MiddleName] = ?,
	[t1].[Gender] = ?
WHERE
	[t1].[PersonID] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 5

SELECT TOP 2
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = ?

