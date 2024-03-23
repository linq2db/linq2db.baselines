BeforeExecute
-- SqlServer.SA SqlServer.2019

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
-- SqlServer.SA SqlServer.2019
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
-- SqlServer.SA SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 5
DECLARE @id_1 Int -- Int32
SET     @id_1 = 5
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'abc'

MERGE INTO [Patient] [t1]
USING (SELECT @id AS [PersonID]) [s] ON
(
	[t1].[PersonID] = [s].[PersonID]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[Diagnosis] = Convert(NVarChar(11), Len([t1].[Diagnosis]))
WHEN NOT MATCHED THEN
	INSERT
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@id_1,
		@Diagnosis
	);

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 5
DECLARE @i Int -- Int32
SET     @i = 1
DECLARE @id_1 Int -- Int32
SET     @id_1 = 5
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'abc'

MERGE INTO [Patient] [t1]
USING (SELECT @id AS [PersonID]) [s] ON
(
	[t1].[PersonID] = [s].[PersonID]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[Diagnosis] = Convert(NVarChar(11), Len([t1].[Diagnosis]) + @i)
WHEN NOT MATCHED THEN
	INSERT
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@id_1,
		@Diagnosis
	);

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 5
DECLARE @i Int -- Int32
SET     @i = 2
DECLARE @id_1 Int -- Int32
SET     @id_1 = 5
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'abc'

MERGE INTO [Patient] [t1]
USING (SELECT @id AS [PersonID]) [s] ON
(
	[t1].[PersonID] = [s].[PersonID]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[Diagnosis] = Convert(NVarChar(11), Len([t1].[Diagnosis]) + @i)
WHEN NOT MATCHED THEN
	INSERT
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@id_1,
		@Diagnosis
	);

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 5

SELECT TOP (2)
	[p].[PersonID],
	[p].[Diagnosis]
FROM
	[Patient] [p]
WHERE
	[p].[PersonID] = @id

