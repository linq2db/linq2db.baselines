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
DECLARE @i_1 Int -- Int32
SET     @i_1 = 0
DECLARE @id Int -- Int32
SET     @id = 5
DECLARE @diagnosis NVarChar(4000) -- String
SET     @diagnosis = N'abc'
DECLARE @i Int -- Int32
SET     @i = 0

BEGIN TRAN

UPDATE
	[t1]
SET
	[t1].[Diagnosis] = Convert(NVarChar(11), Len([t1].[Diagnosis]) + @i_1)
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
		Convert(NVarChar(11), Len(@diagnosis) + @i)
	)
END

COMMIT

BeforeExecute
-- SqlServer.2005
DECLARE @i_1 Int -- Int32
SET     @i_1 = 1
DECLARE @id Int -- Int32
SET     @id = 5
DECLARE @diagnosis NVarChar(4000) -- String
SET     @diagnosis = N'abc'
DECLARE @i Int -- Int32
SET     @i = 1

BEGIN TRAN

UPDATE
	[t1]
SET
	[t1].[Diagnosis] = Convert(NVarChar(11), Len([t1].[Diagnosis]) + @i_1)
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
		Convert(NVarChar(11), Len(@diagnosis) + @i)
	)
END

COMMIT

BeforeExecute
-- SqlServer.2005
DECLARE @i_1 Int -- Int32
SET     @i_1 = 2
DECLARE @id Int -- Int32
SET     @id = 5
DECLARE @diagnosis NVarChar(4000) -- String
SET     @diagnosis = N'abc'
DECLARE @i Int -- Int32
SET     @i = 2

BEGIN TRAN

UPDATE
	[t1]
SET
	[t1].[Diagnosis] = Convert(NVarChar(11), Len([t1].[Diagnosis]) + @i_1)
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
		Convert(NVarChar(11), Len(@diagnosis) + @i)
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

DELETE [t1]
FROM
	[Patient] [t1]
WHERE
	[t1].[PersonID] = @id

BeforeExecute
-- SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 5

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

