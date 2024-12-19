BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TestConstantsData]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [TestConstantsData]
(
	[Id]                INTEGER       NOT NULL,
	[GuidValue]         Guid          NOT NULL,
	[GuidNullableValue] Guid              NULL,
	[StringValue]       NVarChar(255)     NULL,

	CONSTRAINT [PK_TestConstantsData] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [TestConstantsData]
(
	[Id],
	[GuidValue],
	[GuidNullableValue],
	[StringValue]
)
VALUES
(1,X'3D667BBCDE0F27438F925D8CC3A11D11',X'3D667BBCDE0F27438F925D8CC3A11D11','StrValue')

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	[e].[Id] = 1 AND [e].[Id] = 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	[e].[Id] = 1 AND [e].[Id] = 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TestConstantsData]

