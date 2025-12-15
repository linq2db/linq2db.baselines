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

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[MetadataVersion],
	[t1].[DictionaryKey]
FROM
	[R] [t1]
LIMIT 2

