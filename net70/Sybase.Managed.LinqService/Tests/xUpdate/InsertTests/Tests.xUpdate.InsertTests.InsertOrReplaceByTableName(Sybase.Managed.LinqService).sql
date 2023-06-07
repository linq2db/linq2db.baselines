﻿BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'xxPatient') IS NOT NULL)
	DROP TABLE [xxPatient]

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [xxPatient]
(
	[PersonID]  Int           NOT NULL,
	[Diagnosis] NVarChar(255)     NULL,

	CONSTRAINT [PK_xxPatient] PRIMARY KEY CLUSTERED ([PersonID])
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Diagnosis UniVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis_1 UniVarChar(4) -- String
SET     @Diagnosis_1 = 'ABC1'

UPDATE
	[xxPatient]
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
		@Diagnosis_1
	)
END

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Diagnosis UniVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis_1 UniVarChar(4) -- String
SET     @Diagnosis_1 = 'ABC2'

UPDATE
	[xxPatient]
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
		@Diagnosis_1
	)
END

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[xxPatient] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Diagnosis UniVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis_1 UniVarChar(4) -- String
SET     @Diagnosis_1 = 'ABC1'

UPDATE
	[xxPatient]
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
		@Diagnosis_1
	)
END

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Diagnosis UniVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis_1 UniVarChar(4) -- String
SET     @Diagnosis_1 = 'ABC2'

UPDATE
	[xxPatient]
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
		@Diagnosis_1
	)
END

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[xxPatient] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'xxPatient') IS NOT NULL)
	DROP TABLE [xxPatient]

