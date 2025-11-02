-- SqlServer.2005.MS SqlServer.2005
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'John'
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

-- SqlServer.2005.MS SqlServer.2005
DECLARE @i Int -- Int32
SET     @i = 0
DECLARE @id Int -- Int32
SET     @id = 5
DECLARE @diagnosis Int -- Int32
SET     @diagnosis = 3

UPDATE
	[Patient]
SET
	[Diagnosis] = CAST(LEN([t1].[Diagnosis] + N'.') - 1 + @i AS NVarChar(11))
FROM
	[Patient] [t1]
WHERE
	[t1].[PersonID] = @id

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [Patient]
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@id,
		CAST(@diagnosis + @i AS NVarChar(11))
	)
END

-- SqlServer.2005.MS SqlServer.2005
DECLARE @i Int -- Int32
SET     @i = 1
DECLARE @id Int -- Int32
SET     @id = 5
DECLARE @diagnosis Int -- Int32
SET     @diagnosis = 3

UPDATE
	[Patient]
SET
	[Diagnosis] = CAST(LEN([t1].[Diagnosis] + N'.') - 1 + @i AS NVarChar(11))
FROM
	[Patient] [t1]
WHERE
	[t1].[PersonID] = @id

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [Patient]
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@id,
		CAST(@diagnosis + @i AS NVarChar(11))
	)
END

-- SqlServer.2005.MS SqlServer.2005
DECLARE @i Int -- Int32
SET     @i = 2
DECLARE @id Int -- Int32
SET     @id = 5
DECLARE @diagnosis Int -- Int32
SET     @diagnosis = 3

UPDATE
	[Patient]
SET
	[Diagnosis] = CAST(LEN([t1].[Diagnosis] + N'.') - 1 + @i AS NVarChar(11))
FROM
	[Patient] [t1]
WHERE
	[t1].[PersonID] = @id

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [Patient]
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@id,
		CAST(@diagnosis + @i AS NVarChar(11))
	)
END

-- SqlServer.2005.MS SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 5

SELECT TOP (2)
	[p].[PersonID],
	[p].[Diagnosis]
FROM
	[Patient] [p]
WHERE
	[p].[PersonID] = @id

