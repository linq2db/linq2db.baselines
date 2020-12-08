BeforeExecute
-- Access AccessOleDb

ALTER TABLE Doctor DROP CONSTRAINT PersonDoctor

BeforeExecute
-- Access AccessOleDb

ALTER TABLE Patient DROP CONSTRAINT PersonPatient

BeforeExecute
-- Access AccessOleDb

ALTER TABLE Person ALTER COLUMN PersonID COUNTER(5, 1)

BeforeExecute
-- Access AccessOleDb

ALTER TABLE Doctor ADD CONSTRAINT PersonDoctor FOREIGN KEY (PersonID) REFERENCES Person ON UPDATE CASCADE ON DELETE CASCADE

BeforeExecute
-- Access AccessOleDb

ALTER TABLE Patient ADD CONSTRAINT PersonPatient FOREIGN KEY (PersonID) REFERENCES Person ON UPDATE CASCADE ON DELETE CASCADE

BeforeExecute
-- Access AccessOleDb
DECLARE @FirstName VarWChar(3) -- String
SET     @FirstName = '123'
DECLARE @LastName VarWChar(3) -- String
SET     @LastName = '456'
DECLARE @MiddleName VarWChar(3) -- String
SET     @MiddleName = '789'
DECLARE @Gender VarWChar(1) -- String
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
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
-- Access AccessOleDb

SELECT @@IDENTITY

BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
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
	[t].[PersonID] = @id

BeforeExecute
-- Access AccessOleDb
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 5
DECLARE @FirstName VarWChar(3) -- String
SET     @FirstName = '123'
DECLARE @LastName VarWChar(3) -- String
SET     @LastName = '456'
DECLARE @MiddleName VarWChar(3) -- String
SET     @MiddleName = '789'
DECLARE @Gender VarWChar(1) -- String
SET     @Gender = 'M'

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @PersonID AND [t1].[FirstName] = @FirstName AND [t1].[LastName] = @LastName AND [t1].[MiddleName] = @MiddleName AND [t1].[Gender] = @Gender

