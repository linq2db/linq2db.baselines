BeforeExecute
-- SQLite.MS SQLite (asynchronously)

DROP TABLE IF EXISTS [xxPatient24]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

CREATE TABLE [xxPatient24]
(
	[PersonID]  INTEGER       NOT NULL,
	[Diagnosis] NVarChar(255)     NULL,

	CONSTRAINT [PK_xxPatient24] PRIMARY KEY ([PersonID])
)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID  -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient24]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[xxPatient24].[PersonID] = @PersonID

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @PersonID  -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO [xxPatient24]
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
	[xxPatient24]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[xxPatient24].[PersonID] = @PersonID

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @PersonID  -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO [xxPatient24]
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
	[xxPatient24] [t1]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID  -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient24]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[xxPatient24].[PersonID] = @PersonID

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID  -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient24]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[xxPatient24].[PersonID] = @PersonID

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	Count(*)
FROM
	[xxPatient24] [t1]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

DROP TABLE IF EXISTS [xxPatient24]

