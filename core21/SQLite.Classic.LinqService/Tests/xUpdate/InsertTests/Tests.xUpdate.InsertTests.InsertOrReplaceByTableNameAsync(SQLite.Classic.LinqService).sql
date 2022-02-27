BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DROP TABLE IF EXISTS [xxPatient70]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

CREATE TABLE [xxPatient70]
(
	[PersonID]  INTEGER       NOT NULL,
	[Diagnosis] NVarChar(255)     NULL,

	CONSTRAINT [PK_xxPatient70] PRIMARY KEY ([PersonID])
)

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID  -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient70]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[xxPatient70].[PersonID] = @PersonID

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @PersonID  -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO [xxPatient70]
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
-- SQLite.Classic SQLite (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID  -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient70]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[xxPatient70].[PersonID] = @PersonID

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @PersonID  -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO [xxPatient70]
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
-- SQLite.Classic SQLite (asynchronously)

SELECT
	Count(*)
FROM
	[xxPatient70] [t1]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID  -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient70]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[xxPatient70].[PersonID] = @PersonID

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID  -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient70]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[xxPatient70].[PersonID] = @PersonID

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	Count(*)
FROM
	[xxPatient70] [t1]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DROP TABLE IF EXISTS [xxPatient70]

