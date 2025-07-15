BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[x].[Discriminator],
	[x].[Id],
	[x].[Value3],
	[x].[Value2],
	[x].[Value1]
FROM
	[TPHTableDefault] [x]
WHERE
	[x].[Value1] = 'Str1'
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[x].[Discriminator],
	[x].[Id],
	[x].[Value3],
	[x].[Value2],
	[x].[Value1]
FROM
	[TPHTableDefault] [x]
WHERE
	[x].[Value2] = 'Str2'
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[x].[Discriminator],
	[x].[Id],
	[x].[Value3],
	[x].[Value2],
	[x].[Value1]
FROM
	[TPHTableDefault] [x]
WHERE
	[x].[Value3] = 'Str3'
LIMIT 2

