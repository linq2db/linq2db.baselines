-- ClickHouse.MySql ClickHouse

SELECT
	Substring(tag.Name, positionUTF8(tag.Name, '.') + 1, ((positionUTF8(tag.Name, '.', toUInt32(6)) - 1) - (positionUTF8(tag.Name, '.') - 1)) - 1)
FROM
	TagsTable tag

