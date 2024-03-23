BeforeExecute
-- SqlServer.2005

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
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

BeforeExecute
-- SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 5
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'negative'

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
		@Diagnosis
	)
END

BeforeExecute
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

BeforeExecute
-- SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 5
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'positive'

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
		@Diagnosis
	)
END

BeforeExecute
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

