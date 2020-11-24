BeforeExecute
-- SQLite.MS SQLite (asynchronously)

DROP TABLE IF EXISTS [xxPatient12]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

CREATE TABLE [xxPatient12]
(
	[PersonID]  INTEGER       NOT NULL,
	[Diagnosis] NVarChar(255)     NULL,

	CONSTRAINT [PK_xxPatient12] PRIMARY KEY ([PersonID])
)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID  -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient12]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[xxPatient12].[PersonID] = @PersonID

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @PersonID  -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO [xxPatient12]
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
-- SQLite.MS SQLite (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID  -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient12]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[xxPatient12].[PersonID] = @PersonID

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @PersonID  -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO [xxPatient12]
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
-- SQLite.MS SQLite (asynchronously)

SELECT
	Count(*)
FROM
	[xxPatient12] [t1]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID  -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient12]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[xxPatient12].[PersonID] = @PersonID

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID  -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient12]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[xxPatient12].[PersonID] = @PersonID

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	Count(*)
FROM
	[xxPatient12] [t1]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

DROP TABLE IF EXISTS [xxPatient12]

