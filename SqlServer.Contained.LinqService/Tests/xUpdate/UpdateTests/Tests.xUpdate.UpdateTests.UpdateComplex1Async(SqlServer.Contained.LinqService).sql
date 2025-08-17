BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)
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
-- SqlServer.Contained SqlServer.2019 (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 5

SELECT TOP (1)
	[t1].[PersonID],
	[t1].[Gender],
	[t1].[FirstName],
	[t1].[MiddleName],
	[t1].[LastName]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)
DECLARE @Gender NChar(1) -- StringFixedLength
SET     @Gender = N'M'
DECLARE @Name_FirstName NVarChar(4000) -- String
SET     @Name_FirstName = N'UpdateComplex'
DECLARE @Name_MiddleName NVarChar(4000) -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName NVarChar(4000) -- String
SET     @Name_LastName = N'UpdateComplex'
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
-- SqlServer.Contained SqlServer.2019 (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 5

SELECT TOP (1)
	[t1].[PersonID],
	[t1].[Gender],
	[t1].[FirstName],
	[t1].[MiddleName],
	[t1].[LastName]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

