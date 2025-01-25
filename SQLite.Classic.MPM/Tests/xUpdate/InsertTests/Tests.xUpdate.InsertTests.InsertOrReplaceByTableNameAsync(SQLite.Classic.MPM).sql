BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

DROP TABLE IF EXISTS [xxPatient]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

CREATE TABLE [xxPatient]
(
	[PersonID]  INTEGER       NOT NULL,
	[Diagnosis] NVarChar(255)     NULL,

	CONSTRAINT [PK_xxPatient] PRIMARY KEY ([PersonID])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
DECLARE @PersonID  -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO [xxPatient] AS [t1]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	@PersonID,
	@Diagnosis
)
ON CONFLICT ([PersonID]) DO UPDATE SET
	[Diagnosis] = @Diagnosis

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
DECLARE @PersonID  -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO [xxPatient] AS [t1]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	@PersonID,
	@Diagnosis
)
ON CONFLICT ([PersonID]) DO UPDATE SET
	[Diagnosis] = @Diagnosis

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

SELECT
	COUNT(*)
FROM
	[xxPatient] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
DECLARE @PersonID  -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO [xxPatient] AS [t1]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	@PersonID,
	@Diagnosis
)
ON CONFLICT ([PersonID]) DO UPDATE SET
	[Diagnosis] = @Diagnosis

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
DECLARE @PersonID  -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO [xxPatient] AS [t1]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	@PersonID,
	@Diagnosis
)
ON CONFLICT ([PersonID]) DO UPDATE SET
	[Diagnosis] = @Diagnosis

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

SELECT
	COUNT(*)
FROM
	[xxPatient] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

DROP TABLE IF EXISTS [xxPatient]

