BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [xxPatient22]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [xxPatient22]
(
	[PersonID]  INTEGER       NOT NULL,
	[Diagnosis] NVarChar(255)     NULL,

	CONSTRAINT [PK_xxPatient22] PRIMARY KEY ([PersonID])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID  -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient22]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[xxPatient22].[PersonID] = @PersonID

BeforeExecute
-- SQLite.MS SQLite
DECLARE @PersonID  -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'

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

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID  -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient22]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[xxPatient22].[PersonID] = @PersonID

BeforeExecute
-- SQLite.MS SQLite
DECLARE @PersonID  -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'

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

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[xxPatient22] [t1]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID  -- Int32
SET     @PersonID = 1

UPDATE
	[xxPatient22]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[xxPatient22].[PersonID] = @PersonID

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID  -- Int32
SET     @PersonID = 2

UPDATE
	[xxPatient22]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[xxPatient22].[PersonID] = @PersonID

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[xxPatient22] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [xxPatient22]

