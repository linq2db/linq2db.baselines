﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE N'UpdateComplex%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)
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
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)
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

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)
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
	[t1]
SET
	[t1].[Gender] = @Gender,
	[t1].[FirstName] = @Name_FirstName,
	[t1].[MiddleName] = @Name_MiddleName,
	[t1].[LastName] = @Name_LastName
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @ID

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)
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

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

DELETE [_]
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE N'UpdateComplex%' ESCAPE N'~'

