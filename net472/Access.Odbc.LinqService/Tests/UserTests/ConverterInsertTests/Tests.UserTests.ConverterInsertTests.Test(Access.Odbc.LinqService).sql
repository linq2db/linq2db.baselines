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
DECLARE @FirstName NVarChar(3) -- String
SET     @FirstName = '123'
DECLARE @LastName NVarChar(3) -- String
SET     @LastName = '456'
DECLARE @MiddleName NVarChar(3) -- String
SET     @MiddleName = '789'
DECLARE @Gender NVarChar(1) -- String
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
DECLARE @id Int -- Int32
SET     @id = 5

SELECT TOP 1 
	[t].[PersonID], 
	[t].[FirstName], 
	[t].[LastName], 
	[t].[MiddleName], 
	[t].[Gender]
FROM
	[Person] [t]
WHERE
	[t].[PersonID] = ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 5

SELECT TOP 1 
	[t].[PersonID], 
	[t].[FirstName], 
	[t].[LastName], 
	[t].[MiddleName], 
	[t].[Gender]
FROM
	[Person] [t]
WHERE
	[t].[PersonID] = ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @PersonID Int -- Int32
SET     @PersonID = 5
DECLARE @FirstName NVarChar(3) -- String
SET     @FirstName = '123'
DECLARE @LastName NVarChar(3) -- String
SET     @LastName = '456'
DECLARE @MiddleName NVarChar(3) -- String
SET     @MiddleName = '789'
DECLARE @Gender NVarChar(1) -- String
SET     @Gender = 'M'

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = ? AND
	[t1].[FirstName] = ? AND
	[t1].[LastName] = ? AND
	[t1].[MiddleName] = ? AND
	[t1].[Gender] = ?

