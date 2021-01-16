BeforeExecute
-- SqlServer.2005

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
-- SqlServer.2005
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'UpdateColumnFilter'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'whatever'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
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

BeforeExecute
-- SqlServer.2005
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'UpdateColumnFilterUpdated'
DECLARE @ID Int -- Int32
SET     @ID = 5

UPDATE
	[t1]
SET
	[t1].[FirstName] = @FirstName
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @ID

BeforeExecute
-- SqlServer.2005
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'UpdateColumnFilterUpdated'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'UpdateColumnFilterUpdated'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'M'
DECLARE @ID Int -- Int32
SET     @ID = 5

UPDATE
	[t1]
SET
	[t1].[FirstName] = @FirstName,
	[t1].[LastName] = @LastName,
	[t1].[MiddleName] = @MiddleName,
	[t1].[Gender] = @Gender
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @ID

BeforeExecute
-- SqlServer.2005
DECLARE @ID Int -- Int32
SET     @ID = 5

DELETE [x]
FROM
	[Person] [x]
WHERE
	[x].[PersonID] = @ID

