BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TagsTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS TagsTable
(
	Name Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Substring(tag.Name, positionUTF8(tag.Name, '.') + toInt32(1), positionUTF8(tag.Name, '.', toUInt32(toInt32(6))) - toInt32(1) - positionUTF8(tag.Name, '.'))
FROM
	TagsTable tag

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TagsTable

