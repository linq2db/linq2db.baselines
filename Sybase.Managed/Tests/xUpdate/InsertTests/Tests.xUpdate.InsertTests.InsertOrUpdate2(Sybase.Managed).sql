-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(4) -- String
SET     @FirstName = 'test'
DECLARE @LastName UniVarChar(7) -- String
SET     @LastName = 'subject'
DECLARE @MiddleName UniVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'U'

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

SELECT @@IDENTITY

-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
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
		'negative'
	)
END

-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT
	[p].[PersonID],
	[p].[Diagnosis]
FROM
	[Patient] [p]
WHERE
	[p].[PersonID] = @id

-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
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
		'positive'
	)
END

-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT
	[p].[PersonID],
	[p].[Diagnosis]
FROM
	[Patient] [p]
WHERE
	[p].[PersonID] = @id

