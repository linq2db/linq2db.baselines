BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[xxPatient]', N'U') IS NOT NULL)
	DROP TABLE [xxPatient]

BeforeExecute
-- SqlServer.2005

CREATE TABLE [xxPatient]
(
	[PersonID]  Int            NOT NULL,
	[Diagnosis] NVarChar(4000)     NULL,

	CONSTRAINT [PK_xxPatient] PRIMARY KEY CLUSTERED ([PersonID])
)

BeforeExecute
-- SqlServer.2005
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'ABC1'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient]
SET
	[Diagnosis] = @Diagnosis
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

BeforeExecute
-- SqlServer.2005
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'ABC2'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient]
SET
	[Diagnosis] = @Diagnosis
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

BeforeExecute
-- SqlServer.2005

SELECT
	COUNT(*)
FROM
	[xxPatient] [t1]

BeforeExecute
-- SqlServer.2005
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'ABC1'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient]
SET
	[Diagnosis] = @Diagnosis
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

BeforeExecute
-- SqlServer.2005
DECLARE @Diagnosis NVarChar(4000) -- String
SET     @Diagnosis = N'ABC2'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient]
SET
	[Diagnosis] = @Diagnosis
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

BeforeExecute
-- SqlServer.2005

SELECT
	COUNT(*)
FROM
	[xxPatient] [t1]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[xxPatient]', N'U') IS NOT NULL)
	DROP TABLE [xxPatient]

