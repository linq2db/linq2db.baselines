BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

DROP TABLE [xxPatient23]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

CREATE TABLE [xxPatient23]
(
	[PersonID]  Int           NOT NULL,
	[Diagnosis] NVarChar(255)     NULL,

	CONSTRAINT [PK_xxPatient23] PRIMARY KEY CLUSTERED ([PersonID])
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Diagnosis_1 UniVarChar(4) -- String
SET     @Diagnosis_1 = 'ABC1'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis UniVarChar(4) -- String
SET     @Diagnosis = 'ABC1'

BEGIN TRAN

UPDATE
	[xxPatient23]
SET
	[t1].[Diagnosis] = @Diagnosis_1
FROM
	[xxPatient23] [t1]
WHERE
	[t1].[PersonID] = @PersonID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [xxPatient23]
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
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Diagnosis_1 UniVarChar(4) -- String
SET     @Diagnosis_1 = 'ABC2'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis UniVarChar(4) -- String
SET     @Diagnosis = 'ABC2'

BEGIN TRAN

UPDATE
	[xxPatient23]
SET
	[t1].[Diagnosis] = @Diagnosis_1
FROM
	[xxPatient23] [t1]
WHERE
	[t1].[PersonID] = @PersonID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [xxPatient23]
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
-- Sybase.Managed Sybase (asynchronously)

SELECT
	Count(*)
FROM
	[xxPatient23] [t1]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Diagnosis_1 UniVarChar(4) -- String
SET     @Diagnosis_1 = 'ABC1'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis UniVarChar(4) -- String
SET     @Diagnosis = 'ABC1'

BEGIN TRAN

UPDATE
	[xxPatient23]
SET
	[t1].[Diagnosis] = @Diagnosis_1
FROM
	[xxPatient23] [t1]
WHERE
	[t1].[PersonID] = @PersonID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [xxPatient23]
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
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Diagnosis_1 UniVarChar(4) -- String
SET     @Diagnosis_1 = 'ABC2'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis UniVarChar(4) -- String
SET     @Diagnosis = 'ABC2'

BEGIN TRAN

UPDATE
	[xxPatient23]
SET
	[t1].[Diagnosis] = @Diagnosis_1
FROM
	[xxPatient23] [t1]
WHERE
	[t1].[PersonID] = @PersonID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [xxPatient23]
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
-- Sybase.Managed Sybase (asynchronously)

SELECT
	Count(*)
FROM
	[xxPatient23] [t1]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

DROP TABLE [xxPatient23]

