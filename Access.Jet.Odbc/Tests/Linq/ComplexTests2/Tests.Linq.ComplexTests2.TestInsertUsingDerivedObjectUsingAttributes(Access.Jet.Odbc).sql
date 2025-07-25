﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @FirstName NVarChar(21) -- String
SET     @FirstName = 'test_inherited_insert'
DECLARE @LastName NVarChar(4) -- String
SET     @LastName = 'test'
DECLARE @MiddleName NVarChar(4) -- String
SET     @MiddleName = 'test'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'U'

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
-- Access.Jet.Odbc AccessODBC

SELECT @@IDENTITY

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT TOP 1
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] = 'test_inherited_insert'

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @FirstName NVarChar(21) -- String
SET     @FirstName = 'test_inherited_insert'
DECLARE @LastName NVarChar(4) -- String
SET     @LastName = 'test'
DECLARE @MiddleName NVarChar(4) -- String
SET     @MiddleName = 'test'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'U'
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
-- Access.Jet.Odbc AccessODBC

SELECT TOP 1
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] = 'test_inherited_insert'

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 5

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = ?

