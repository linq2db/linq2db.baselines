﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Car]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Car]
(
	[Id]   INTEGER      NOT NULL,
	[Name] NVarChar(50)     NULL,

	CONSTRAINT [PK_Car] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(7) -- String
SET     @Name = 'Special'

INSERT INTO [Car]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(9) -- String
SET     @Name = 'NoSpecial'

INSERT INTO [Car]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	1 = 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	([x].[Name] <> 'Special' OR [x].[Name] IS NULL)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	[x].[Name] = 'Special'

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	1 = 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	([x].[Name] <> 'Special' OR [x].[Name] IS NULL)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	[x].[Name] = 'Special'

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Car]

