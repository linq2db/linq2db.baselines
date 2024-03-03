﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TPHTableDefault]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TPHTableDefault]
(
	[Id]            INTEGER      NOT NULL,
	[Discriminator] INTEGER      NOT NULL,
	[Value1]        NVarChar(50)     NULL,
	[Value2]        NVarChar(50)     NULL,
	[Value3]        NVarChar(50)     NULL,

	CONSTRAINT [PK_TPHTableDefault] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Discriminator  -- Int32
SET     @Discriminator = 1
DECLARE @Value1 NVarChar(4) -- String
SET     @Value1 = 'Str1'

INSERT INTO [TPHTableDefault]
(
	[Id],
	[Discriminator],
	[Value1]
)
VALUES
(
	@Id,
	@Discriminator,
	@Value1
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Discriminator  -- Int32
SET     @Discriminator = 2
DECLARE @Value2 NVarChar(4) -- String
SET     @Value2 = 'Str2'

INSERT INTO [TPHTableDefault]
(
	[Id],
	[Discriminator],
	[Value2]
)
VALUES
(
	@Id,
	@Discriminator,
	@Value2
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Discriminator  -- Int32
SET     @Discriminator = 3
DECLARE @Value3 NVarChar(4) -- String
SET     @Value3 = 'Str3'

INSERT INTO [TPHTableDefault]
(
	[Id],
	[Discriminator],
	[Value3]
)
VALUES
(
	@Id,
	@Discriminator,
	@Value3
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Discriminator],
	[t1].[Id],
	[t1].[Value3],
	[t1].[Value2],
	[t1].[Value1]
FROM
	[TPHTableDefault] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[x].[Discriminator],
	[x].[Id],
	[x].[Value3],
	[x].[Value2],
	[x].[Value1]
FROM
	[TPHTableDefault] [x]
WHERE
	[x].[Discriminator] = 1
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[x].[Discriminator],
	[x].[Id],
	[x].[Value3],
	[x].[Value2],
	[x].[Value1]
FROM
	[TPHTableDefault] [x]
WHERE
	[x].[Discriminator] = 2
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[x].[Discriminator],
	[x].[Id],
	[x].[Value3],
	[x].[Value2],
	[x].[Value1]
FROM
	[TPHTableDefault] [x]
WHERE
	[x].[Discriminator] = 3
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[x].[Discriminator],
	[x].[Id],
	[x].[Value3],
	[x].[Value2],
	[x].[Value1]
FROM
	[TPHTableDefault] [x]
WHERE
	([x].[Value1] = 'Str1')
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[x].[Discriminator],
	[x].[Id],
	[x].[Value3],
	[x].[Value2],
	[x].[Value1]
FROM
	[TPHTableDefault] [x]
WHERE
	([x].[Value2] = 'Str2')
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[x].[Discriminator],
	[x].[Id],
	[x].[Value3],
	[x].[Value2],
	[x].[Value1]
FROM
	[TPHTableDefault] [x]
WHERE
	([x].[Value3] = 'Str3')
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TPHTableDefault]

