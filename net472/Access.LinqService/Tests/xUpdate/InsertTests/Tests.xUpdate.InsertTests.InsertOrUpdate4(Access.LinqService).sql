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
-- Access AccessOleDb

SELECT @@IDENTITY

BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 5

UPDATE
	[Patient] [t1]
SET
	[t1].[Diagnosis] = CStr(Len([t1].[Diagnosis]))
WHERE
	[t1].[PersonID] = @id

BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 5
DECLARE @diagnosis VarWChar(3) -- String
SET     @diagnosis = 'abc'

INSERT INTO [Patient]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	@id,
	CStr(Len(@diagnosis))
)

BeforeExecute
-- Access AccessOleDb
DECLARE @i Integer -- Int32
SET     @i = 1
DECLARE @id Integer -- Int32
SET     @id = 5

UPDATE
	[Patient] [t1]
SET
	[t1].[Diagnosis] = CStr(Len([t1].[Diagnosis]) + @i)
WHERE
	[t1].[PersonID] = @id

BeforeExecute
-- Access AccessOleDb
DECLARE @i Integer -- Int32
SET     @i = 2
DECLARE @id Integer -- Int32
SET     @id = 5

UPDATE
	[Patient] [t1]
SET
	[t1].[Diagnosis] = CStr(Len([t1].[Diagnosis]) + @i)
WHERE
	[t1].[PersonID] = @id

BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT TOP 2
	[p].[PersonID],
	[p].[Diagnosis]
FROM
	[Patient] [p]
WHERE
	[p].[PersonID] = @id

BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 5

DELETE FROM
	[Patient] [t1]
WHERE
	[t1].[PersonID] = @id

BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 5

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

