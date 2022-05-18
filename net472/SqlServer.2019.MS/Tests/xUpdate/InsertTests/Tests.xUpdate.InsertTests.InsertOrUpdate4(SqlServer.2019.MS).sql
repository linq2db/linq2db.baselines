﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

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
-- SqlServer.2019.MS SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 5
DECLARE @i Int -- Int32
SET     @i = 0
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
		[t1].[Diagnosis] = Convert(NVarChar(11), Len([t1].[Diagnosis]) + @i)
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
-- SqlServer.2019.MS SqlServer.2019
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
		[t1].[Diagnosis] = Convert(NVarChar(11), Len([t1].[Diagnosis]) + @i)
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
-- SqlServer.2019.MS SqlServer.2019
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
		[t1].[Diagnosis] = Convert(NVarChar(11), Len([t1].[Diagnosis]) + @i)
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
-- SqlServer.2019.MS SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 5

SELECT TOP (2)
	[p].[PersonID],
	[p].[Diagnosis]
FROM
	[Patient] [p]
WHERE
	[p].[PersonID] = @id

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 5

DELETE [t1]
FROM
	[Patient] [t1]
WHERE
	[t1].[PersonID] = @id

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 5

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

