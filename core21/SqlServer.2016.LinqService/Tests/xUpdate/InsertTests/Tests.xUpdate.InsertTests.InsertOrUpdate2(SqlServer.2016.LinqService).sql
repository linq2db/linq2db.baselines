BeforeExecute
-- SqlServer.2016 SqlServer.2012

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
-- SqlServer.2016 SqlServer.2012

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	N'test',
	N'subject',
	N'U'
)

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @id Int -- Int32
SET     @id = 5

MERGE INTO [Patient] [t1]
USING (SELECT @id AS [PersonID]) [s] ON
(
	[t1].[PersonID] = [s].[PersonID]
)
WHEN NOT MATCHED THEN
	INSERT
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@id,
		N'negative'
	);

BeforeExecute
-- SqlServer.2016 SqlServer.2012
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
-- SqlServer.2016 SqlServer.2012
DECLARE @id Int -- Int32
SET     @id = 5

MERGE INTO [Patient] [t1]
USING (SELECT @id AS [PersonID]) [s] ON
(
	[t1].[PersonID] = [s].[PersonID]
)
WHEN NOT MATCHED THEN
	INSERT
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@id,
		N'positive'
	);

BeforeExecute
-- SqlServer.2016 SqlServer.2012
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
-- SqlServer.2016 SqlServer.2012
DECLARE @id Int -- Int32
SET     @id = 5

DELETE [t1]
FROM
	[Patient] [t1]
WHERE
	[t1].[PersonID] = @id

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @id Int -- Int32
SET     @id = 5

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

