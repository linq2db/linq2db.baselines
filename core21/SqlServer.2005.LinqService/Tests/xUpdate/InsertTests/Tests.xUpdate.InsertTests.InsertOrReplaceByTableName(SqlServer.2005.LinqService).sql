BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[xxPatient22]', N'U') IS NOT NULL)
	DROP TABLE [xxPatient22]

BeforeExecute
-- SqlServer.2005

CREATE TABLE [xxPatient22]
(
	[PersonID]  Int            NOT NULL,
	[Diagnosis] NVarChar(4000)     NULL,

	CONSTRAINT [PK_xxPatient22] PRIMARY KEY CLUSTERED ([PersonID])
)

BeforeExecute
-- SqlServer.2005
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
	[xxPatient22] [t1]
WHERE
	[t1].[PersonID] = @PersonID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [xxPatient22]
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
SET     @Diagnosis = N'ABC2'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2

BEGIN TRAN

UPDATE
	[t1]
SET
	[t1].[Diagnosis] = @Diagnosis
FROM
	[xxPatient22] [t1]
WHERE
	[t1].[PersonID] = @PersonID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [xxPatient22]
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

SELECT
	Count(*)
FROM
	[xxPatient22] [t1]

BeforeExecute
-- SqlServer.2005
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
	[xxPatient22] [t1]
WHERE
	[t1].[PersonID] = @PersonID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [xxPatient22]
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
SET     @Diagnosis = N'ABC2'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2

BEGIN TRAN

UPDATE
	[t1]
SET
	[t1].[Diagnosis] = @Diagnosis
FROM
	[xxPatient22] [t1]
WHERE
	[t1].[PersonID] = @PersonID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [xxPatient22]
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

SELECT
	Count(*)
FROM
	[xxPatient22] [t1]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[xxPatient22]', N'U') IS NOT NULL)
	DROP TABLE [xxPatient22]

