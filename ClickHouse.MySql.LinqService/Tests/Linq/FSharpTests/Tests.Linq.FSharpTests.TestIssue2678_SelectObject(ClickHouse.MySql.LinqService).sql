BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS R

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS R
(
	MetadataVersion Int32,
	DictionaryKey   Int32,

	PRIMARY KEY (MetadataVersion)
)
ENGINE = MergeTree()
ORDER BY MetadataVersion

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO R
(
	MetadataVersion,
	DictionaryKey
)
VALUES
(
	2,
	5
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.MetadataVersion,
	t1.DictionaryKey
FROM
	R t1
LIMIT 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS R

