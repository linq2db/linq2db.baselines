﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TestConstantsData]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TestConstantsData]
(
	[Id]                INTEGER       NOT NULL,
	[GuidValue]         Guid          NOT NULL,
	[GuidNullableValue] Guid              NULL,
	[StringValue]       NVarChar(255)     NULL,

	CONSTRAINT [PK_TestConstantsData] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @p  -- Int32
SET     @p = 2

SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	[e].[Id] = @Id AND [e].[Id] = @p

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @p  -- Int32
SET     @p = 2

SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	[e].[Id] = @Id AND [e].[Id] = @p

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TestConstantsData]

