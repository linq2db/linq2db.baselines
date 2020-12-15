BeforeExecute
-- SqlServer.2008

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
-- SqlServer.2008

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	N'John',
	N'Shepard',
	N'M'
)

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.2008
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
		[t1].[Diagnosis] = Convert(NVarChar(11), Len([t1].[Diagnosis]))
WHEN NOT MATCHED THEN
	INSERT
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@id,
		Convert(NVarChar(11), Len(@diagnosis))
	);

BeforeExecute
-- SqlServer.2008
DECLARE @id Int -- Int32
SET     @id = 5
DECLARE @i_1 Int -- Int32
SET     @i_1 = 1
DECLARE @diagnosis NVarChar(4000) -- String
SET     @diagnosis = N'abc'
DECLARE @i Int -- Int32
SET     @i = 1

MERGE INTO [Patient] [t1]
USING (SELECT @id AS [PersonID]) [s] ON
(
	[t1].[PersonID] = [s].[PersonID]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[t1].[Diagnosis] = Convert(NVarChar(11), Len([t1].[Diagnosis]) + @i_1)
WHEN NOT MATCHED THEN
	INSERT
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@id,
		Convert(NVarChar(11), Len(@diagnosis) + @i)
	);

BeforeExecute
-- SqlServer.2008
DECLARE @id Int -- Int32
SET     @id = 5
DECLARE @i_1 Int -- Int32
SET     @i_1 = 2
DECLARE @diagnosis NVarChar(4000) -- String
SET     @diagnosis = N'abc'
DECLARE @i Int -- Int32
SET     @i = 2

MERGE INTO [Patient] [t1]
USING (SELECT @id AS [PersonID]) [s] ON
(
	[t1].[PersonID] = [s].[PersonID]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[t1].[Diagnosis] = Convert(NVarChar(11), Len([t1].[Diagnosis]) + @i_1)
WHEN NOT MATCHED THEN
	INSERT
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@id,
		Convert(NVarChar(11), Len(@diagnosis) + @i)
	);

BeforeExecute
-- SqlServer.2008
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

BeforeExecute
-- SqlServer.2008
DECLARE @id Int -- Int32
SET     @id = 5

DELETE [t1]
FROM
	[Patient] [t1]
WHERE
	[t1].[PersonID] = @id

BeforeExecute
-- SqlServer.2008
DECLARE @id Int -- Int32
SET     @id = 5

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

