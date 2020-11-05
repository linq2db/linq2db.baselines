BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

DROP TABLE IF EXISTS [xxPatient35]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

CREATE TABLE [xxPatient35]
(
	[PersonID]  INTEGER       NOT NULL,
	[Diagnosis] NVarChar(255)     NULL,

	CONSTRAINT [PK_xxPatient35] PRIMARY KEY ([PersonID])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID  -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient35]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[xxPatient35].[PersonID] = @PersonID

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @PersonID  -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO [xxPatient35]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	@PersonID,
	@Diagnosis
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID  -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient35]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[xxPatient35].[PersonID] = @PersonID

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @PersonID  -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO [xxPatient35]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	@PersonID,
	@Diagnosis
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	Count(*)
FROM
	[xxPatient35] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID  -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient35]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[xxPatient35].[PersonID] = @PersonID

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID  -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient35]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[xxPatient35].[PersonID] = @PersonID

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	Count(*)
FROM
	[xxPatient35] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

DROP TABLE IF EXISTS [xxPatient35]

