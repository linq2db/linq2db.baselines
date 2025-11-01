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

-- SqlCe

SELECT @@IDENTITY

-- SqlCe
DECLARE @nullableGender NVarChar(1) -- String
SET     @nullableGender = 'O'

UPDATE
	[Person]
SET
	[Gender] = @nullableGender
WHERE
	[Person].[FirstName] LIKE 'UpdateComplex%' ESCAPE '~'

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

