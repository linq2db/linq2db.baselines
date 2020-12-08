BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'123'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'456'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = N'789'
DECLARE @Gender NVarChar(4000) -- String
SET     @Gender = N'M'

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

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @id Int -- Int32
SET     @id = 5

SELECT TOP (@take)
	[t].[PersonID],
	[t].[FirstName],
	[t].[LastName],
	[t].[MiddleName],
	[t].[Gender]
FROM
	[Person] [t]
WHERE
	[t].[PersonID] = @id

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @PersonID Int -- Int32
SET     @PersonID = 5
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'123'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'456'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = N'789'
DECLARE @Gender NVarChar(4000) -- String
SET     @Gender = N'M'

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @PersonID AND
	[t1].[FirstName] = @FirstName AND
	[t1].[LastName] = @LastName AND
	[t1].[MiddleName] = @MiddleName AND
	[t1].[Gender] = @Gender

