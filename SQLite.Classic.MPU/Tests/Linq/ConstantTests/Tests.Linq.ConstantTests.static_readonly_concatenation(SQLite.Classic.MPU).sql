BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TestConstantsData]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TestConstantsData]
(
	[Id]                INTEGER       NOT NULL,
	[GuidValue]         Guid          NOT NULL,
	[GuidNullableValue] Guid              NULL,
	[StringValue]       NVarChar(255)     NULL,

	CONSTRAINT [PK_TestConstantsData] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p NVarChar(9) -- String
SET     @p = 'StrValue1'

SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	[e].[StringValue] || '1' = @p AND [e].[StringValue] || '1' IS NOT NULL

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TestConstantsData]

