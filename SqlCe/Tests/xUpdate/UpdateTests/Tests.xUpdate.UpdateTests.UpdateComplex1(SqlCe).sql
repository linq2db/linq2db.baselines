BeforeExecute
-- SqlCe
DECLARE @Gender NVarChar(1) -- String
SET     @Gender = 'M'
DECLARE @Name_FirstName NVarChar(13) -- String
SET     @Name_FirstName = 'UpdateComplex'
DECLARE @Name_MiddleName NVarChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName NVarChar(5) -- String
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
-- SqlCe

SELECT @@IDENTITY

BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 5

SELECT TOP (1)
	[t1].[PersonID] as [ID],
	[t1].[Gender],
	[t1].[FirstName],
	[t1].[MiddleName],
	[t1].[LastName]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

BeforeExecute
-- SqlCe
DECLARE @Gender NVarChar(1) -- String
SET     @Gender = 'M'
DECLARE @Name_FirstName NVarChar(13) -- String
SET     @Name_FirstName = 'UpdateComplex'
DECLARE @Name_MiddleName NVarChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName NVarChar(13) -- String
SET     @Name_LastName = 'UpdateComplex'
DECLARE @ID Int -- Int32
SET     @ID = 5

UPDATE
	[Person]
SET
	[Gender] = @Gender,
	[FirstName] = @Name_FirstName,
	[MiddleName] = @Name_MiddleName,
	[LastName] = @Name_LastName
WHERE
	[Person].[PersonID] = @ID

BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 5

SELECT TOP (1)
	[t1].[PersonID] as [ID],
	[t1].[Gender],
	[t1].[FirstName],
	[t1].[MiddleName],
	[t1].[LastName]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

