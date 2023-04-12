BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS R

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS R
(
	MetadataVersion Int32,
	DictionaryKey   Int32,

	PRIMARY KEY (MetadataVersion)
)
ENGINE = MergeTree()
ORDER BY MetadataVersion

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO R
(
	MetadataVersion,
	DictionaryKey
)
VALUES
(
	toInt32(2),
	toInt32(5)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.MetadataVersion,
	t1.DictionaryKey
FROM
	R t1
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS R

