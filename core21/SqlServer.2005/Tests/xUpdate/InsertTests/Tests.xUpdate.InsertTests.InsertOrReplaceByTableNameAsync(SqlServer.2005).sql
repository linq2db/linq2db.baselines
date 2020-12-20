BeforeExecute
-- SqlServer.2005 (asynchronously)

IF (OBJECT_ID(N'[xxPatient]', N'U') IS NOT NULL)
	DROP TABLE [xxPatient]

BeforeExecute
-- SqlServer.2005 (asynchronously)

CREATE TABLE [xxPatient]
(
	[PersonID]  Int            NOT NULL,
	[Diagnosis] NVarChar(4000)     NULL,

	CONSTRAINT [PK_xxPatient] PRIMARY KEY CLUSTERED ([PersonID])
)

BeforeExecute
-- SqlServer.2005 (asynchronously)
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'ABC1'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1

BEGIN TRAN

UPDATE
	[t1]
SET
	[t1].[Diagnosis] = @Diagnosis
FROM
	[xxPatient] [t1]
WHERE
	[t1].[PersonID] = @PersonID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [xxPatient]
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
-- SqlServer.2005 (asynchronously)
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'ABC2'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2

BEGIN TRAN

UPDATE
	[t1]
SET
	[t1].[Diagnosis] = @Diagnosis
FROM
	[xxPatient] [t1]
WHERE
	[t1].[PersonID] = @PersonID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [xxPatient]
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
-- SqlServer.2005 (asynchronously)

SELECT
	Count(*)
FROM
	[xxPatient] [t1]

BeforeExecute
-- SqlServer.2005 (asynchronously)
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'ABC1'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1

BEGIN TRAN

UPDATE
	[t1]
SET
	[t1].[Diagnosis] = @Diagnosis
FROM
	[xxPatient] [t1]
WHERE
	[t1].[PersonID] = @PersonID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [xxPatient]
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
-- SqlServer.2005 (asynchronously)
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'ABC2'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2

BEGIN TRAN

UPDATE
	[t1]
SET
	[t1].[Diagnosis] = @Diagnosis
FROM
	[xxPatient] [t1]
WHERE
	[t1].[PersonID] = @PersonID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [xxPatient]
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
-- SqlServer.2005 (asynchronously)

SELECT
	Count(*)
FROM
	[xxPatient] [t1]

BeforeExecute
-- SqlServer.2005 (asynchronously)

IF (OBJECT_ID(N'[xxPatient]', N'U') IS NOT NULL)
	DROP TABLE [xxPatient]

