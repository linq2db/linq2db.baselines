﻿BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'InsertColumnFilter'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'whatever'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = N'som middle name'
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
-- SqlServer.2017 (asynchronously)
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'InsertColumnFilter'

SELECT TOP (1)
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
-- SqlServer.2017 (asynchronously)
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'InsertColumnFilter'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'whatever'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = N'updated name'
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
-- SqlServer.2017 (asynchronously)
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'InsertColumnFilter'

SELECT TOP (1)
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
-- SqlServer.2017 (asynchronously)
DECLARE @newName NVarChar(4000) -- String
SET     @newName = N'InsertColumnFilter'

DELETE [x]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] = @newName

