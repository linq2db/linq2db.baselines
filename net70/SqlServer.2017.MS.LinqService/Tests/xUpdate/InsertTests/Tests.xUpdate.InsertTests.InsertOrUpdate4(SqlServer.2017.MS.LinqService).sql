BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
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
-- SqlServer.2017.MS SqlServer.2017
DECLARE @id Int -- Int32
SET     @id = 5
DECLARE @diagnosis NVarChar(4000) -- String
SET     @diagnosis = N'abc'

MERGE INTO [Patient] [t1]
USING (SELECT @id AS [PersonID]) [s] ON
(
	[t1].[PersonID] = [s].[PersonID]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[t1].[Diagnosis] = Convert(NVarChar(11), LEN(REPLACE([t1].[Diagnosis],' ','.')))
WHEN NOT MATCHED THEN
	INSERT
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@id,
		Convert(NVarChar(11), LEN(REPLACE(@diagnosis,' ','.')))
	);

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @id Int -- Int32
SET     @id = 5
DECLARE @i Int -- Int32
SET     @i = 1
DECLARE @diagnosis NVarChar(4000) -- String
SET     @diagnosis = N'abc'

MERGE INTO [Patient] [t1]
USING (SELECT @id AS [PersonID]) [s] ON
(
	[t1].[PersonID] = [s].[PersonID]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[t1].[Diagnosis] = Convert(NVarChar(11), LEN(REPLACE([t1].[Diagnosis],' ','.')) + @i)
WHEN NOT MATCHED THEN
	INSERT
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@id,
		Convert(NVarChar(11), LEN(REPLACE(@diagnosis,' ','.')) + @i)
	);

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @id Int -- Int32
SET     @id = 5
DECLARE @i Int -- Int32
SET     @i = 2
DECLARE @diagnosis NVarChar(4000) -- String
SET     @diagnosis = N'abc'

MERGE INTO [Patient] [t1]
USING (SELECT @id AS [PersonID]) [s] ON
(
	[t1].[PersonID] = [s].[PersonID]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[t1].[Diagnosis] = Convert(NVarChar(11), LEN(REPLACE([t1].[Diagnosis],' ','.')) + @i)
WHEN NOT MATCHED THEN
	INSERT
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@id,
		Convert(NVarChar(11), LEN(REPLACE(@diagnosis,' ','.')) + @i)
	);

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
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

