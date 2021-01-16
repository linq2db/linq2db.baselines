BeforeExecute
-- SqlServer.2005

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'abc0'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 5

BEGIN TRAN

UPDATE
	[t1]
SET
	[t1].[Diagnosis] = @Diagnosis
FROM
	[Patient] [t1]
WHERE
	[t1].[PersonID] = @PersonID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [Patient]
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@PersonID,
		@Diagnosis
	)
END

COMMIT

BeforeExecute
-- SqlServer.2005
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'abc1'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 5

BEGIN TRAN

UPDATE
	[t1]
SET
	[t1].[Diagnosis] = @Diagnosis
FROM
	[Patient] [t1]
WHERE
	[t1].[PersonID] = @PersonID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [Patient]
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@PersonID,
		@Diagnosis
	)
END

COMMIT

BeforeExecute
-- SqlServer.2005
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'abc2'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 5

BEGIN TRAN

UPDATE
	[t1]
SET
	[t1].[Diagnosis] = @Diagnosis
FROM
	[Patient] [t1]
WHERE
	[t1].[PersonID] = @PersonID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [Patient]
	(
		[PersonID],
		[Diagnosis]
	)
	VALUES
	(
		@PersonID,
		@Diagnosis
	)
END

COMMIT

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

BeforeExecute
-- SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 5

DELETE [p]
FROM
	[Patient] [p]
WHERE
	[p].[PersonID] = @id

BeforeExecute
-- SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 5

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

