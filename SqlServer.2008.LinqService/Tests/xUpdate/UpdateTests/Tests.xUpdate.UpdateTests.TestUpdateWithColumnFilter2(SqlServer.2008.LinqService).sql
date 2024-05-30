﻿BeforeExecute
-- SqlServer.2008

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
-- SqlServer.2008
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
-- SqlServer.2008
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'UpdateColumnFilter'

SELECT TOP (2)
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] = @FirstName

BeforeExecute
-- SqlServer.2008
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'UpdateColumnFilterUpdated'
DECLARE @ID Int -- Int32
SET     @ID = 5

UPDATE
	[Person]
SET
	[FirstName] = @FirstName
WHERE
	[Person].[PersonID] = @ID

BeforeExecute
-- SqlServer.2008
DECLARE @ID Int -- Int32
SET     @ID = 5

SELECT TOP (2)
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	[x].[PersonID] = @ID

BeforeExecute
-- SqlServer.2008
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
	[Person]
SET
	[FirstName] = @FirstName,
	[LastName] = @LastName,
	[MiddleName] = @MiddleName,
	[Gender] = @Gender
WHERE
	[Person].[PersonID] = @ID

BeforeExecute
-- SqlServer.2008
DECLARE @ID Int -- Int32
SET     @ID = 5

SELECT TOP (2)
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @ID

