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

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @Diagnosis VarWChar(4) -- String
SET     @Diagnosis = 'abc0'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 5

UPDATE
	[Patient] [t1]
SET
	[t1].[Diagnosis] = @Diagnosis
WHERE
	[t1].[PersonID] = @PersonID

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis VarWChar(4) -- String
SET     @Diagnosis = 'abc0'

INSERT INTO [Patient]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	@PersonID,
	@Diagnosis
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @Diagnosis VarWChar(4) -- String
SET     @Diagnosis = 'abc1'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 5

UPDATE
	[Patient] [t1]
SET
	[t1].[Diagnosis] = @Diagnosis
WHERE
	[t1].[PersonID] = @PersonID

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @Diagnosis VarWChar(4) -- String
SET     @Diagnosis = 'abc2'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 5

UPDATE
	[Patient] [t1]
SET
	[t1].[Diagnosis] = @Diagnosis
WHERE
	[t1].[PersonID] = @PersonID

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT TOP 2
	[p].[PersonID],
	[p].[Diagnosis]
FROM
	[Patient] [p]
WHERE
	[p].[PersonID] = @id

