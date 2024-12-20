﻿BeforeExecute
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
DECLARE @Gender WChar(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @Name_FirstName VarWChar(13) -- String
SET     @Name_FirstName = 'UpdateComplex'
DECLARE @Name_MiddleName VarWChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName VarWChar(5) -- String
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
	@Gender,
	@Name_FirstName,
	@Name_MiddleName,
	@Name_LastName
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT @@IDENTITY

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @nullableGender WChar(1) -- StringFixedLength
SET     @nullableGender = 'O'

UPDATE
	[Person] [t1]
SET
	[t1].[Gender] = @nullableGender
WHERE
	[t1].[FirstName] LIKE 'UpdateComplex%'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @id Integer -- Int32
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
	[t1].[PersonID] = @id

