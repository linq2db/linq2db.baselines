﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

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
-- SqlServer.2019.SA SqlServer.2017 (asynchronously)
DECLARE @PersonID Int -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'abc0'

MERGE INTO [Patient] [t1]
USING (SELECT @PersonID AS [PersonID]) [s] ON
(
	[t1].[PersonID] = [s].[PersonID]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[t1].[Diagnosis] = @Diagnosis
WHEN NOT MATCHED THEN
	INSERT
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@PersonID,
		@Diagnosis
	);

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017 (asynchronously)
DECLARE @PersonID Int -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'abc1'

MERGE INTO [Patient] [t1]
USING (SELECT @PersonID AS [PersonID]) [s] ON
(
	[t1].[PersonID] = [s].[PersonID]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[t1].[Diagnosis] = @Diagnosis
WHEN NOT MATCHED THEN
	INSERT
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@PersonID,
		@Diagnosis
	);

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017 (asynchronously)
DECLARE @PersonID Int -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'abc2'

MERGE INTO [Patient] [t1]
USING (SELECT @PersonID AS [PersonID]) [s] ON
(
	[t1].[PersonID] = [s].[PersonID]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[t1].[Diagnosis] = @Diagnosis
WHEN NOT MATCHED THEN
	INSERT
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@PersonID,
		@Diagnosis
	);

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017 (asynchronously)
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
-- SqlServer.2019.SA SqlServer.2017 (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 5

DELETE [p]
FROM
	[Patient] [p]
WHERE
	[p].[PersonID] = @id

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017 (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 5

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

