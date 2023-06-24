BeforeExecute
-- SqlServer.2005

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
-- SqlServer.2005
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

BeforeExecute
-- SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 5
DECLARE @diagnosis NVarChar(4000) -- String
SET     @diagnosis = N'abc'

UPDATE
	[t1]
SET
	[t1].[Diagnosis] = Convert(NVarChar(11), LEN(REPLACE([t1].[Diagnosis],' ','.')))
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
		Convert(NVarChar(11), LEN(REPLACE(@diagnosis,' ','.')))
	)
END

BeforeExecute
-- SqlServer.2005
DECLARE @i Int -- Int32
SET     @i = 1
DECLARE @id Int -- Int32
SET     @id = 5
DECLARE @diagnosis NVarChar(4000) -- String
SET     @diagnosis = N'abc'

UPDATE
	[t1]
SET
	[t1].[Diagnosis] = Convert(NVarChar(11), LEN(REPLACE([t1].[Diagnosis],' ','.')) + @i)
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
		Convert(NVarChar(11), LEN(REPLACE(@diagnosis,' ','.')) + @i)
	)
END

BeforeExecute
-- SqlServer.2005
DECLARE @i Int -- Int32
SET     @i = 2
DECLARE @id Int -- Int32
SET     @id = 5
DECLARE @diagnosis NVarChar(4000) -- String
SET     @diagnosis = N'abc'

UPDATE
	[t1]
SET
	[t1].[Diagnosis] = Convert(NVarChar(11), LEN(REPLACE([t1].[Diagnosis],' ','.')) + @i)
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
		Convert(NVarChar(11), LEN(REPLACE(@diagnosis,' ','.')) + @i)
	)
END

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @id Int -- Int32
SET     @id = 5

SELECT TOP (@take)
	[p].[PersonID],
	[p].[Diagnosis]
FROM
	[Patient] [p]
WHERE
	[p].[PersonID] = @id

