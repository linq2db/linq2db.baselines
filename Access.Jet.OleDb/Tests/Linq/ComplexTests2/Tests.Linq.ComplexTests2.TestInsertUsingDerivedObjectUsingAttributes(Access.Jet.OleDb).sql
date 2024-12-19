BeforeExecute
-- Access.Jet.OleDb AccessOleDb

ALTER TABLE Doctor DROP CONSTRAINT PersonDoctor

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

ALTER TABLE Patient DROP CONSTRAINT PersonPatient

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

ALTER TABLE Person ALTER COLUMN PersonID COUNTER(5, 1)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

ALTER TABLE Doctor ADD CONSTRAINT PersonDoctor FOREIGN KEY (PersonID) REFERENCES Person ON UPDATE CASCADE ON DELETE CASCADE

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

ALTER TABLE Patient ADD CONSTRAINT PersonPatient FOREIGN KEY (PersonID) REFERENCES Person ON UPDATE CASCADE ON DELETE CASCADE

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @FirstName VarWChar(21) -- String
SET     @FirstName = 'test_inherited_insert'
DECLARE @LastName VarWChar(4) -- String
SET     @LastName = 'test'
DECLARE @MiddleName VarWChar(4) -- String
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
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT @@IDENTITY

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

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
-- Access.Jet.OleDb AccessOleDb
DECLARE @FirstName VarWChar(21) -- String
SET     @FirstName = 'test_inherited_insert'
DECLARE @LastName VarWChar(4) -- String
SET     @LastName = 'test'
DECLARE @MiddleName VarWChar(4) -- String
SET     @MiddleName = 'test'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'U'
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	[Person] [t1]
SET
	[t1].[FirstName] = @FirstName,
	[t1].[LastName] = @LastName,
	[t1].[MiddleName] = @MiddleName,
	[t1].[Gender] = @Gender
WHERE
	[t1].[PersonID] = @ID

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

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
-- Access.Jet.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 5

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @ID

