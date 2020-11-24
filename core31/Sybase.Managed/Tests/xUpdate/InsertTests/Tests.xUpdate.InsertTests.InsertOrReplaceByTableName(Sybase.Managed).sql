BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'xxPatient11') IS NOT NULL)
	DROP TABLE [xxPatient11]

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [xxPatient11]
(
	[PersonID]  Int           NOT NULL,
	[Diagnosis] NVarChar(255)     NULL,

	CONSTRAINT [PK_xxPatient11] PRIMARY KEY CLUSTERED ([PersonID])
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Diagnosis_1 UniVarChar(4) -- String
SET     @Diagnosis_1 = 'ABC1'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis UniVarChar(4) -- String
SET     @Diagnosis = 'ABC1'

BEGIN TRAN

UPDATE
	[xxPatient11]
SET
	[t1].[Diagnosis] = @Diagnosis_1
FROM
	[xxPatient11] [t1]
WHERE
	[t1].[PersonID] = @PersonID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [xxPatient11]
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
-- Sybase.Managed Sybase
DECLARE @Diagnosis_1 UniVarChar(4) -- String
SET     @Diagnosis_1 = 'ABC2'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis UniVarChar(4) -- String
SET     @Diagnosis = 'ABC2'

BEGIN TRAN

UPDATE
	[xxPatient11]
SET
	[t1].[Diagnosis] = @Diagnosis_1
FROM
	[xxPatient11] [t1]
WHERE
	[t1].[PersonID] = @PersonID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [xxPatient11]
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
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[xxPatient11] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Diagnosis_1 UniVarChar(4) -- String
SET     @Diagnosis_1 = 'ABC1'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis UniVarChar(4) -- String
SET     @Diagnosis = 'ABC1'

BEGIN TRAN

UPDATE
	[xxPatient11]
SET
	[t1].[Diagnosis] = @Diagnosis_1
FROM
	[xxPatient11] [t1]
WHERE
	[t1].[PersonID] = @PersonID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [xxPatient11]
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
-- Sybase.Managed Sybase
DECLARE @Diagnosis_1 UniVarChar(4) -- String
SET     @Diagnosis_1 = 'ABC2'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis UniVarChar(4) -- String
SET     @Diagnosis = 'ABC2'

BEGIN TRAN

UPDATE
	[xxPatient11]
SET
	[t1].[Diagnosis] = @Diagnosis_1
FROM
	[xxPatient11] [t1]
WHERE
	[t1].[PersonID] = @PersonID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [xxPatient11]
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
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[xxPatient11] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'xxPatient11') IS NOT NULL)
	DROP TABLE [xxPatient11]

