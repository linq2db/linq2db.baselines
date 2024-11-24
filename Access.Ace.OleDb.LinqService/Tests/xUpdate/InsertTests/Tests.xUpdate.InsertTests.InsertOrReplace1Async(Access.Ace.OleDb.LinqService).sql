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
DECLARE @FirstName VarWChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName VarWChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @MiddleName VarWChar -- String
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
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT @@IDENTITY

