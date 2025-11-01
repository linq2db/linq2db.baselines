-- SqlServer.2005
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'test'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'subject'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = NULL
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

-- SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 5

IF NOT EXISTS(
	SELECT 1 
	FROM
		[Patient] [t1]
	WHERE
		[t1].[PersonID] = @id
)
BEGIN
	INSERT INTO [Patient]
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@id,
		N'negative'
	)
END

-- SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 5

SELECT
	[p].[PersonID],
	[p].[Diagnosis]
FROM
	[Patient] [p]
WHERE
	[p].[PersonID] = @id

-- SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 5

IF NOT EXISTS(
	SELECT 1 
	FROM
		[Patient] [t1]
	WHERE
		[t1].[PersonID] = @id
)
BEGIN
	INSERT INTO [Patient]
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@id,
		N'positive'
	)
END

-- SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 5

SELECT
	[p].[PersonID],
	[p].[Diagnosis]
FROM
	[Patient] [p]
WHERE
	[p].[PersonID] = @id

