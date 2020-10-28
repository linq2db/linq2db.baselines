BeforeExecute
-- SqlServer.2017

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'John0'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'Shepard'
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

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @p1 NVarChar(4000) -- String
SET     @p1 = N'John0'

SELECT TOP (@take)
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @p1 AND [p].[LastName] = N'Shepard'

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'John1'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'Shepard'
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

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @p1 NVarChar(4000) -- String
SET     @p1 = N'John1'

SELECT TOP (@take)
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @p1 AND [p].[LastName] = N'Shepard'

BeforeExecute
-- SqlServer.2017

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

