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
-- Access.Odbc AccessODBC (asynchronously)

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	'John',
	'Shepard',
	'M'
)

BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)

SELECT @@IDENTITY

BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)
DECLARE @i Int -- Int32
SET     @i = 0
DECLARE @id Int -- Int32
SET     @id = 5

UPDATE
	[Patient] [t1]
SET
	[t1].[Diagnosis] = CStr(Len([t1].[Diagnosis]) + ?)
WHERE
	[t1].[PersonID] = ?

BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 5

INSERT INTO [Patient]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	?,
	'abc'
)

BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)
DECLARE @i Int -- Int32
SET     @i = 1
DECLARE @id Int -- Int32
SET     @id = 5

UPDATE
	[Patient] [t1]
SET
	[t1].[Diagnosis] = CStr(Len([t1].[Diagnosis]) + ?)
WHERE
	[t1].[PersonID] = ?

BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)
DECLARE @i Int -- Int32
SET     @i = 2
DECLARE @id Int -- Int32
SET     @id = 5

UPDATE
	[Patient] [t1]
SET
	[t1].[Diagnosis] = CStr(Len([t1].[Diagnosis]) + ?)
WHERE
	[t1].[PersonID] = ?

BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 5

SELECT TOP 2
	[p].[PersonID],
	[p].[Diagnosis]
FROM
	[Patient] [p]
WHERE
	[p].[PersonID] = ?

BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 5

DELETE FROM
	[Patient] [t1]
WHERE
	[t1].[PersonID] = ?

BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 5

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = ?

