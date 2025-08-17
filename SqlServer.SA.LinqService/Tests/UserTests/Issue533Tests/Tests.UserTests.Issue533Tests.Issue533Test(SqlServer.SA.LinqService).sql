BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)
DECLARE @Gender NChar(1) -- StringFixedLength
SET     @Gender = N'M'
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'FirstName533'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = NULL
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'LastName533'

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
	@FirstName,
	@MiddleName,
	@LastName
)

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)
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

