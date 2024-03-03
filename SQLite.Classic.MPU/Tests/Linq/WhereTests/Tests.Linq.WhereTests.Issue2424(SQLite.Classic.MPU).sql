﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Isue2424Table]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Isue2424Table]
(
	[Id]       INTEGER       NOT NULL,
	[StrValue] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [Isue2424Table]
(
	[Id],
	[StrValue]
)
VALUES
(1,'1'),
(3,'3'),
(5,'5')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 <= CASE
		WHEN [i].[StrValue] > '4' THEN 1
		WHEN [i].[StrValue] = '4' THEN 0
		ELSE -1
	END
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	CASE
		WHEN [i].[StrValue] > '4' THEN 1
		WHEN [i].[StrValue] = '4' THEN 0
		ELSE -1
	END >= 0
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 >= CASE
		WHEN [i].[StrValue] > '2' THEN 1
		WHEN [i].[StrValue] = '2' THEN 0
		ELSE -1
	END
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	CASE
		WHEN [i].[StrValue] > '2' THEN 1
		WHEN [i].[StrValue] = '2' THEN 0
		ELSE -1
	END <= 0
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 < CASE
		WHEN [i].[StrValue] > '3' THEN 1
		WHEN [i].[StrValue] = '3' THEN 0
		ELSE -1
	END
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	CASE
		WHEN [i].[StrValue] > '3' THEN 1
		WHEN [i].[StrValue] = '3' THEN 0
		ELSE -1
	END > 0
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 > CASE
		WHEN [i].[StrValue] > '3' THEN 1
		WHEN [i].[StrValue] = '3' THEN 0
		ELSE -1
	END
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	CASE
		WHEN [i].[StrValue] > '3' THEN 1
		WHEN [i].[StrValue] = '3' THEN 0
		ELSE -1
	END < 0
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 = CASE
		WHEN [i].[StrValue] > '3' THEN 1
		WHEN [i].[StrValue] = '3' THEN 0
		ELSE -1
	END
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	CASE
		WHEN [i].[StrValue] > '3' THEN 1
		WHEN [i].[StrValue] = '3' THEN 0
		ELSE -1
	END = 0
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 >= CASE
		WHEN [i].[StrValue] > '2' THEN 1
		WHEN [i].[StrValue] = '2' THEN 0
		ELSE -1
	END
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	CASE
		WHEN [i].[StrValue] > '2' THEN 1
		WHEN [i].[StrValue] = '2' THEN 0
		ELSE -1
	END <= 0
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 <= CASE
		WHEN [i].[StrValue] > '4' THEN 1
		WHEN [i].[StrValue] = '4' THEN 0
		ELSE -1
	END
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	CASE
		WHEN [i].[StrValue] > '4' THEN 1
		WHEN [i].[StrValue] = '4' THEN 0
		ELSE -1
	END >= 0
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 > CASE
		WHEN [i].[StrValue] > '3' THEN 1
		WHEN [i].[StrValue] = '3' THEN 0
		ELSE -1
	END
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	CASE
		WHEN [i].[StrValue] > '3' THEN 1
		WHEN [i].[StrValue] = '3' THEN 0
		ELSE -1
	END < 0
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 < CASE
		WHEN [i].[StrValue] > '3' THEN 1
		WHEN [i].[StrValue] = '3' THEN 0
		ELSE -1
	END
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	CASE
		WHEN [i].[StrValue] > '3' THEN 1
		WHEN [i].[StrValue] = '3' THEN 0
		ELSE -1
	END > 0
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 <= CASE
		WHEN [i].[StrValue] > '5' THEN 1
		WHEN [i].[StrValue] = '5' THEN 0
		ELSE -1
	END
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	CASE
		WHEN [i].[StrValue] > '5' THEN 1
		WHEN [i].[StrValue] = '5' THEN 0
		ELSE -1
	END >= 0
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 >= CASE
		WHEN [i].[StrValue] > '1' THEN 1
		WHEN [i].[StrValue] = '1' THEN 0
		ELSE -1
	END
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	CASE
		WHEN [i].[StrValue] > '1' THEN 1
		WHEN [i].[StrValue] = '1' THEN 0
		ELSE -1
	END <= 0
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Isue2424Table]

