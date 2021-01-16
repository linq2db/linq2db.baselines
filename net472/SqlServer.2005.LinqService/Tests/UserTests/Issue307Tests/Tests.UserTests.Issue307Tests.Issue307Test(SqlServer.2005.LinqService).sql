BeforeExecute
-- SqlServer.2005

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
-- SqlServer.2005

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

BeforeExecute
-- SqlServer.2005
DECLARE @Gender NChar(1) -- StringFixedLength
SET     @Gender = N'M'
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'FirstName307'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = NULL
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'LastName307'

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
-- SqlServer.2005

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

