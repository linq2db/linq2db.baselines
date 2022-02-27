BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [TPHTable]
(
	[Id],
	[Discriminator],
	[Value1],
	[Value2],
	[NullableBool],
	[Value3]
)
VALUES
(1,1,'Str1',NULL,NULL,NULL),
(2,2,NULL,'Str2',NULL,NULL),
(3,3,NULL,NULL,'Y','Str3')

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 2

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
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 2

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
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 2

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
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 2

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
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 2

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
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 2

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
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TPHTable]

