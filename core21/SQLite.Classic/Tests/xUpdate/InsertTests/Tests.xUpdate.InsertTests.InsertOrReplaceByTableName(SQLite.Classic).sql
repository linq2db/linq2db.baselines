BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [xxPatient31]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [xxPatient31]
(
	[PersonID]  INTEGER       NOT NULL,
	[Diagnosis] NVarChar(255)     NULL,

	CONSTRAINT [PK_xxPatient31] PRIMARY KEY ([PersonID])
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID  -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient31]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[xxPatient31].[PersonID] = @PersonID

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @PersonID  -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO [xxPatient31]
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
-- SQLite.Classic SQLite
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID  -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient31]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[xxPatient31].[PersonID] = @PersonID

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @PersonID  -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO [xxPatient31]
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
-- SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[xxPatient31] [t1]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID  -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient31]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[xxPatient31].[PersonID] = @PersonID

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID  -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient31]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[xxPatient31].[PersonID] = @PersonID

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[xxPatient31] [t1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [xxPatient31]

