BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TagsTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS TagsTable
(
	Name Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Substring(tag.Name, positionUTF8(tag.Name, '.') + 1, ((positionUTF8(tag.Name, '.', toUInt32(6)) - 1) - (positionUTF8(tag.Name, '.') - 1)) - 1)
FROM
	TagsTable tag

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TagsTable

