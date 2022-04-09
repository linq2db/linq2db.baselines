﻿BeforeExecute
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
BeginTransaction
BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[Patient] [t1]

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[Doctor] [t1]

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[Person] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @FirstName NVarChar(7) -- String
SET     @FirstName = 'first 1'
DECLARE @LastName NVarChar(6) -- String
SET     @LastName = 'last 1'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'F'

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
DECLARE @FirstName NVarChar(7) -- String
SET     @FirstName = 'first 2'
DECLARE @LastName NVarChar(6) -- String
SET     @LastName = 'last 2'
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
-- Access.Odbc AccessODBC

SELECT @@IDENTITY

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @FirstName NVarChar(7) -- String
SET     @FirstName = 'first 3'
DECLARE @LastName NVarChar(6) -- String
SET     @LastName = 'last 3'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'O'

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
DECLARE @FirstName NVarChar(7) -- String
SET     @FirstName = 'first 4'
DECLARE @LastName NVarChar(6) -- String
SET     @LastName = 'last 4'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
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
DECLARE @FirstName NVarChar(7) -- String
SET     @FirstName = 'first 5'
DECLARE @LastName NVarChar(6) -- String
SET     @LastName = 'last 5'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'F'

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
DECLARE @FirstName NVarChar(7) -- String
SET     @FirstName = 'first 6'
DECLARE @LastName NVarChar(6) -- String
SET     @LastName = 'last 6'
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
-- Access.Odbc AccessODBC

SELECT @@IDENTITY

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @PersonID Int -- Int32
SET     @PersonID = 9
DECLARE @Taxonomy NVarChar(10) -- String
SET     @Taxonomy = 'Dr. Lector'

INSERT INTO [Doctor]
(
	[PersonID],
	[Taxonomy]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @PersonID Int -- Int32
SET     @PersonID = 10
DECLARE @Taxonomy NVarChar(10) -- String
SET     @Taxonomy = 'Dr. who???'

INSERT INTO [Doctor]
(
	[PersonID],
	[Taxonomy]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @PersonID Int -- Int32
SET     @PersonID = 7
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'sick'

INSERT INTO [Patient]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @PersonID Int -- Int32
SET     @PersonID = 8
DECLARE @Diagnosis NVarChar(9) -- String
SET     @Diagnosis = 'very sick'

INSERT INTO [Patient]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]
ORDER BY
	[t1].[PersonID]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[PersonID],
	[t1].[Taxonomy]
FROM
	[Doctor] [t1]
ORDER BY
	[t1].[PersonID]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
ORDER BY
	[t1].[PersonID]

BeforeExecute
RollbackTransaction
