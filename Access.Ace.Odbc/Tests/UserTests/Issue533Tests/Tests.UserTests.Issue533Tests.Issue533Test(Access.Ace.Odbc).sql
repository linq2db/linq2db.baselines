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
DECLARE @FirstName NVarChar(12) -- String
SET     @FirstName = 'FirstName533'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @LastName NVarChar(11) -- String
SET     @LastName = 'LastName533'

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
DECLARE @id  -- Int32
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

