BeforeExecute
-- Access.Ace.OleDb AccessOleDb

ALTER TABLE Doctor DROP CONSTRAINT PersonDoctor

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

ALTER TABLE Patient DROP CONSTRAINT PersonPatient

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

ALTER TABLE Person ALTER COLUMN PersonID COUNTER(5, 1)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

ALTER TABLE Doctor ADD CONSTRAINT PersonDoctor FOREIGN KEY (PersonID) REFERENCES Person ON UPDATE CASCADE ON DELETE CASCADE

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

ALTER TABLE Patient ADD CONSTRAINT PersonPatient FOREIGN KEY (PersonID) REFERENCES Person ON UPDATE CASCADE ON DELETE CASCADE

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @FirstName VarWChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'
DECLARE @LastName VarWChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarWChar(15) -- String
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
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @FirstName VarWChar(18) -- String
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
	[x].[FirstName] = @FirstName

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @FirstName VarWChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'
DECLARE @LastName VarWChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	[Person] [t1]
SET
	[t1].[FirstName] = @FirstName,
	[t1].[LastName] = @LastName,
	[t1].[Gender] = @Gender
WHERE
	[t1].[PersonID] = @ID

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @FirstName VarWChar(18) -- String
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
	[x].[FirstName] = @FirstName

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @newName VarWChar(18) -- String
SET     @newName = 'InsertColumnFilter'

DELETE FROM
	[Person] [x]
WHERE
	[x].[FirstName] = @newName

