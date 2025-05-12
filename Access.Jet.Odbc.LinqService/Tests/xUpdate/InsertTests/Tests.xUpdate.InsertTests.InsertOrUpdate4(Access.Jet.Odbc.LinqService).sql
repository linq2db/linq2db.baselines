BeforeExecute
-- Access.Jet.Odbc AccessODBC

ALTER TABLE Doctor DROP CONSTRAINT PersonDoctor

BeforeExecute
-- Access.Jet.Odbc AccessODBC

ALTER TABLE Patient DROP CONSTRAINT PersonPatient

BeforeExecute
-- Access.Jet.Odbc AccessODBC

ALTER TABLE Person ALTER COLUMN PersonID COUNTER(5, 1)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

ALTER TABLE Doctor ADD CONSTRAINT PersonDoctor FOREIGN KEY (PersonID) REFERENCES Person ON UPDATE CASCADE ON DELETE CASCADE

BeforeExecute
-- Access.Jet.Odbc AccessODBC

ALTER TABLE Patient ADD CONSTRAINT PersonPatient FOREIGN KEY (PersonID) REFERENCES Person ON UPDATE CASCADE ON DELETE CASCADE

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @FirstName NVarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName NVarChar(7) -- String
SET     @LastName = 'Shepard'
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
-- Access.Jet.Odbc AccessODBC

SELECT @@IDENTITY

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @i Int -- Int32
SET     @i = 0
DECLARE @id Int -- Int32
SET     @id = 5

UPDATE
	[Patient] [t1]
SET
	[t1].[Diagnosis] = IIF([t1].[Diagnosis] IS NOT NULL, CStr(Len([t1].[Diagnosis]) + ?), NULL)
WHERE
	[t1].[PersonID] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 5
DECLARE @diagnosis Int -- Int32
SET     @diagnosis = 3
DECLARE @i Int -- Int32
SET     @i = 0

INSERT INTO [Patient]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	?,
	CStr(? + ?)
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @i Int -- Int32
SET     @i = 1
DECLARE @id Int -- Int32
SET     @id = 5

UPDATE
	[Patient] [t1]
SET
	[t1].[Diagnosis] = IIF([t1].[Diagnosis] IS NOT NULL, CStr(Len([t1].[Diagnosis]) + ?), NULL)
WHERE
	[t1].[PersonID] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @i Int -- Int32
SET     @i = 2
DECLARE @id Int -- Int32
SET     @id = 5

UPDATE
	[Patient] [t1]
SET
	[t1].[Diagnosis] = IIF([t1].[Diagnosis] IS NOT NULL, CStr(Len([t1].[Diagnosis]) + ?), NULL)
WHERE
	[t1].[PersonID] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 5

SELECT TOP 2
	[p].[PersonID],
	[p].[Diagnosis]
FROM
	[Patient] [p]
WHERE
	[p].[PersonID] = ?

