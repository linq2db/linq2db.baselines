BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TPHTableDefault]

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

INSERT INTO [TPHTableDefault]
(
	[Id],
	[Discriminator],
	[Value1],
	[Value2],
	[Value3]
)
VALUES
(1,1,'Str1',NULL,NULL),
(2,2,NULL,'Str2',NULL),
(3,3,NULL,NULL,'Str3')

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Discriminator],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value3]
FROM
	[TPHTableDefault] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[Value3]
FROM
	[TPHTableDefault] [x]
WHERE
	[x].[Discriminator] = 1
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[Value3]
FROM
	[TPHTableDefault] [x]
WHERE
	[x].[Discriminator] = 2
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[Value3]
FROM
	[TPHTableDefault] [x]
WHERE
	[x].[Discriminator] = 3
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[Value3]
FROM
	[TPHTableDefault] [x]
WHERE
	[x].[Value1] = 'Str1'
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[Value3]
FROM
	[TPHTableDefault] [x]
WHERE
	[x].[Value2] = 'Str2'
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[Value3]
FROM
	[TPHTableDefault] [x]
WHERE
	[x].[Value3] = 'Str3'
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TPHTableDefault]

