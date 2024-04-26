BeforeExecute
-- Access.Odbc AccessODBC

ALTER TABLE Doctor DROP CONSTRAINT PersonDoctor

BeforeExecute
-- Access.Odbc AccessODBC

ALTER TABLE Patient DROP CONSTRAINT PersonPatient

BeforeExecute
-- Access.Odbc AccessODBC

ALTER TABLE Person ALTER COLUMN PersonID COUNTER(5, 1)

BeforeExecute
-- Access.Odbc AccessODBC

ALTER TABLE Doctor ADD CONSTRAINT PersonDoctor FOREIGN KEY (PersonID) REFERENCES Person ON UPDATE CASCADE ON DELETE CASCADE

BeforeExecute
-- Access.Odbc AccessODBC

ALTER TABLE Patient ADD CONSTRAINT PersonPatient FOREIGN KEY (PersonID) REFERENCES Person ON UPDATE CASCADE ON DELETE CASCADE

BeforeExecute
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC

SELECT @@IDENTITY

BeforeExecute
-- Access.Odbc AccessODBC

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
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC

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
-- Access.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 5

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = ?

