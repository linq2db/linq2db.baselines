﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @FirstName NVarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName NVarChar(15) -- String
SET     @MiddleName = 'som middle name'
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
-- Access.Ace.Odbc AccessODBC
DECLARE @FirstName NVarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'

SELECT TOP 1
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
-- Access.Ace.Odbc AccessODBC
DECLARE @FirstName NVarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName NVarChar(12) -- String
SET     @MiddleName = 'updated name'
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
-- Access.Ace.Odbc AccessODBC
DECLARE @FirstName NVarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'

SELECT TOP 1
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
-- Access.Ace.Odbc AccessODBC
DECLARE @newName NVarChar(18) -- String
SET     @newName = 'InsertColumnFilter'

DELETE FROM
	[Person] [x]
WHERE
	[x].[FirstName] = ?

