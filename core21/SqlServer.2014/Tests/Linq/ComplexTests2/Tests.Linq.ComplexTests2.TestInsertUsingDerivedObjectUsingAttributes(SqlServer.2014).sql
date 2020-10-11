BeforeExecute
-- SqlServer.2014 SqlServer.2012

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
-- SqlServer.2014 SqlServer.2012
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
-- SqlServer.2014 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
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
-- SqlServer.2014 SqlServer.2012
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
-- SqlServer.2014 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
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
-- SqlServer.2014 SqlServer.2012
DECLARE @ID Int -- Int32
SET     @ID = 5

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @ID

BeforeExecute
-- SqlServer.2014 SqlServer.2012

DELETE [_]
FROM
	[Person] [_]
WHERE
	[_].[FirstName] = N'test_inherited_insert'

