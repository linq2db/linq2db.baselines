BeforeExecute
-- SqlServer.2017

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
-- SqlServer.2017
DECLARE @Gender NChar(1) -- StringFixedLength
SET     @Gender = N'M'
DECLARE @Name_FirstName NVarChar(4000) -- String
SET     @Name_FirstName = N'UpdateComplex'
DECLARE @Name_MiddleName NVarChar(4000) -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName NVarChar(4000) -- String
SET     @Name_LastName = N'Empty'

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

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.2017
DECLARE @nullableGender NChar(1) -- StringFixedLength
SET     @nullableGender = N'O'

UPDATE
	[Person]
SET
	[Gender] = @nullableGender
WHERE
	[Person].[FirstName] LIKE N'UpdateComplex%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2017
DECLARE @id Int -- Int32
SET     @id = 5

SELECT TOP (1)
	[_].[PersonID],
	[_].[Gender],
	[_].[FirstName],
	[_].[MiddleName],
	[_].[LastName]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = @id

