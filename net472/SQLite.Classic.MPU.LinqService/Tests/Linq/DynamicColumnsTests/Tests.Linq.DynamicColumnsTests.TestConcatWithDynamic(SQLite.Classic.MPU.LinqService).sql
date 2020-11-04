BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [M998_T066]
(
	[F066_04] NVarChar(255)     NULL,
	[F066_05] NVarChar(255)     NULL,
	[F066_00] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Description NVarChar(5) -- String
SET     @Description = 'Desc1'
DECLARE @F066_05 NVarChar(2) -- String
SET     @F066_05 = 'v1'
DECLARE @F066_00 NVarChar -- String
SET     @F066_00 = NULL

INSERT INTO [M998_T066]
(
	[F066_04],
	[F066_05],
	[F066_00]
)
VALUES
(
	@Description,
	@F066_05,
	@F066_00
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Description NVarChar(5) -- String
SET     @Description = 'Desc2'
DECLARE @F066_05 NVarChar(2) -- String
SET     @F066_05 = 'v2'
DECLARE @F066_00 NVarChar -- String
SET     @F066_00 = NULL

INSERT INTO [M998_T066]
(
	[F066_04],
	[F066_05],
	[F066_00]
)
VALUES
(
	@Description,
	@F066_05,
	@F066_00
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [M998_T000]
(
	[F066_04] NVarChar(255)     NULL,
	[F066_05] NVarChar(255)     NULL,
	[F066_00] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Description NVarChar(5) -- String
SET     @Description = 'Desc3'
DECLARE @F066_05 NVarChar -- String
SET     @F066_05 = NULL
DECLARE @F066_00 NVarChar(2) -- String
SET     @F066_00 = 'v3'

INSERT INTO [M998_T000]
(
	[F066_04],
	[F066_05],
	[F066_00]
)
VALUES
(
	@Description,
	@F066_05,
	@F066_00
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Description NVarChar(5) -- String
SET     @Description = 'Desc4'
DECLARE @F066_05 NVarChar -- String
SET     @F066_05 = NULL
DECLARE @F066_00 NVarChar(2) -- String
SET     @F066_00 = 'v4'

INSERT INTO [M998_T000]
(
	[F066_04],
	[F066_05],
	[F066_00]
)
VALUES
(
	@Description,
	@F066_05,
	@F066_00
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[F066_04],
	[t1].[F066_05],
	[t1].[F066_00]
FROM
	[M998_T066] [t1]
UNION ALL
SELECT
	[t2].[F066_04],
	[t2].[F066_05],
	[t2].[F066_00]
FROM
	[M998_T000] [t2]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [M998_T000]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [M998_T066]

