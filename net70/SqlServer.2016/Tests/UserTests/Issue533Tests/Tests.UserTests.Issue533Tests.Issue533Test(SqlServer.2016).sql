BeforeExecute
-- SqlServer.2016

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
-- SqlServer.2016
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
-- SqlServer.2016
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @id Int -- Int32
SET     @id = 5

SELECT TOP (@take)
	[_].[PersonID],
	[_].[Gender],
	[_].[FirstName],
	[_].[MiddleName],
	[_].[LastName]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = @id

