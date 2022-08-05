﻿BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [TPHTable]
(
	[Id]            INTEGER      NOT NULL,
	[Discriminator] INTEGER      NOT NULL,
	[Value1]        NVarChar(50)     NULL,
	[Value2]        NVarChar(50)     NULL,
	[NullableBool]  VarChar(1)       NULL,
	[Value3]        NVarChar(50)     NULL,

	CONSTRAINT [PK_TPHTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value1 NVarChar(4) -- String
SET     @Value1 = 'Str1'
DECLARE @Discriminator  -- Int32
SET     @Discriminator = 1

INSERT INTO [TPHTable]
(
	[Id],
	[Value1],
	[Discriminator]
)
VALUES
(
	@Id,
	@Value1,
	@Discriminator
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Value2 NVarChar(4) -- String
SET     @Value2 = 'Str2'
DECLARE @Discriminator  -- Int32
SET     @Discriminator = 2

INSERT INTO [TPHTable]
(
	[Id],
	[Value2],
	[Discriminator]
)
VALUES
(
	@Id,
	@Value2,
	@Discriminator
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @NullableBool VarChar(1) -- AnsiString
SET     @NullableBool = 'Y'
DECLARE @Value3 NVarChar(4) -- String
SET     @Value3 = 'Str3'
DECLARE @Discriminator  -- Int32
SET     @Discriminator = 3

INSERT INTO [TPHTable]
(
	[Id],
	[NullableBool],
	[Value3],
	[Discriminator]
)
VALUES
(
	@Id,
	@NullableBool,
	@Value3,
	@Discriminator
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Discriminator],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[NullableBool],
	[t1].[Value3]
FROM
	[TPHTable] [t1]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[NullableBool],
	[x].[Value3]
FROM
	[TPHTable] [x]
WHERE
	[x].[Discriminator] = 1
LIMIT 2

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[NullableBool],
	[x].[Value3]
FROM
	[TPHTable] [x]
WHERE
	[x].[Discriminator] = 2
LIMIT 2

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[NullableBool],
	[x].[Value3]
FROM
	[TPHTable] [x]
WHERE
	[x].[Discriminator] = 3
LIMIT 2

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[NullableBool],
	[x].[Value3]
FROM
	[TPHTable] [x]
WHERE
	[x].[Value1] = 'Str1'
LIMIT 2

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[NullableBool],
	[x].[Value3]
FROM
	[TPHTable] [x]
WHERE
	[x].[Value2] = 'Str2'
LIMIT 2

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[NullableBool],
	[x].[Value3]
FROM
	[TPHTable] [x]
WHERE
	[x].[Value3] = 'Str3'
LIMIT 2

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TPHTable]

