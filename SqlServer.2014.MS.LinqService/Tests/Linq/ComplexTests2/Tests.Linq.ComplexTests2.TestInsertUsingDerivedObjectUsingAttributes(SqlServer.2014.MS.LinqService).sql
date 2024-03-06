﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'test_inherited_insert'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'test'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = N'test'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'U'

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
-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (1)
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[FirstName] = N'test_inherited_insert'

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'test_inherited_insert'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'test'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = N'test'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'U'
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
-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (1)
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[FirstName] = N'test_inherited_insert'

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @ID Int -- Int32
SET     @ID = 5

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @ID

