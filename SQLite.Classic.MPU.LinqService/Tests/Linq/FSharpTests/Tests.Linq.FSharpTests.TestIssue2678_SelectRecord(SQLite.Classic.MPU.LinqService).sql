BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [R]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [R]
(
	[MetadataVersion] INTEGER NOT NULL,
	[DictionaryKey]   INTEGER NOT NULL,

	CONSTRAINT [PK_R] PRIMARY KEY ([MetadataVersion])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @MetadataVersion  -- Int32
SET     @MetadataVersion = 2
DECLARE @DictionaryKey  -- Int32
SET     @DictionaryKey = 5

INSERT INTO [R]
(
	[MetadataVersion],
	[DictionaryKey]
)
VALUES
(
	@MetadataVersion,
	@DictionaryKey
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[MetadataVersion],
	[t1].[DictionaryKey]
FROM
	[R] [t1]
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [R]

