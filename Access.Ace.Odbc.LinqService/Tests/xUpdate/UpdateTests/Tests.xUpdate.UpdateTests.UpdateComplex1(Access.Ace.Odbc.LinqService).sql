BeforeExecute
-- Access.Ace.Odbc AccessODBC

ALTER TABLE Doctor DROP CONSTRAINT PersonDoctor

BeforeExecute
-- Access.Ace.Odbc AccessODBC

ALTER TABLE Patient DROP CONSTRAINT PersonPatient

BeforeExecute
-- Access.Ace.Odbc AccessODBC

ALTER TABLE Person ALTER COLUMN PersonID COUNTER(5, 1)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

ALTER TABLE Doctor ADD CONSTRAINT PersonDoctor FOREIGN KEY (PersonID) REFERENCES Person ON UPDATE CASCADE ON DELETE CASCADE

BeforeExecute
-- Access.Ace.Odbc AccessODBC

ALTER TABLE Patient ADD CONSTRAINT PersonPatient FOREIGN KEY (PersonID) REFERENCES Person ON UPDATE CASCADE ON DELETE CASCADE

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Gender NChar(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @Name_FirstName NVarChar(13) -- String
SET     @Name_FirstName = 'UpdateComplex'
DECLARE @Name_MiddleName NVarChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName NVarChar(5) -- String
SET     @Name_LastName = 'Empty'

INSERT INTO [Person]
(
	[Gender],
	[FirstName],
	[MiddleName],
	[LastName]
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

SELECT @@IDENTITY

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 5

SELECT TOP 1
	[t1].[PersonID],
	[t1].[Gender],
	[t1].[FirstName],
	[t1].[MiddleName],
	[t1].[LastName]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Gender NChar(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @Name_FirstName NVarChar(13) -- String
SET     @Name_FirstName = 'UpdateComplex'
DECLARE @Name_MiddleName NVarChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName NVarChar(13) -- String
SET     @Name_LastName = 'UpdateComplex'
DECLARE @ID Int -- Int32
SET     @ID = 5

UPDATE
	[Person] [t1]
SET
	[t1].[Gender] = ?,
	[t1].[FirstName] = ?,
	[t1].[MiddleName] = ?,
	[t1].[LastName] = ?
WHERE
	[t1].[PersonID] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 5

SELECT TOP 1
	[t1].[PersonID],
	[t1].[Gender],
	[t1].[FirstName],
	[t1].[MiddleName],
	[t1].[LastName]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = ?

