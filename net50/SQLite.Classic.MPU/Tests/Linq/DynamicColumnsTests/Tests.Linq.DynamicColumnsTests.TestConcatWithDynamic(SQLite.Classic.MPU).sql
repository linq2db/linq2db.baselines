BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [M998_T066]
(
	[F066_04] NVarChar(255)     NULL,
	[F066_05] NVarChar(255)     NULL,
	[F066_00] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [M998_T066]
(
	[F066_04],
	[F066_05],
	[F066_00]
)
VALUES
('Desc1','v1',NULL),
('Desc2','v2',NULL)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [M998_T000]
(
	[F066_04] NVarChar(255)     NULL,
	[F066_05] NVarChar(255)     NULL,
	[F066_00] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [M998_T000]
(
	[F066_04],
	[F066_05],
	[F066_00]
)
VALUES
('Desc3',NULL,'v3'),
('Desc4',NULL,'v4')

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

DROP TABLE [M998_T000]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [M998_T066]

