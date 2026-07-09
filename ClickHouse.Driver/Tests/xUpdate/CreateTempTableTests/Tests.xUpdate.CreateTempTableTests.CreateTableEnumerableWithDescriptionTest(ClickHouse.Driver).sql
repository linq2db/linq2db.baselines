-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS TempTable

-- ClickHouse.Driver ClickHouse

CREATE TABLE IF NOT EXISTS `<>f__AnonymousType224``1`
(
	Name Nullable(String)
)
ENGINE = Memory()

INSERT ASYNC BULK `<>f__AnonymousType224``1`(Name)

-- ClickHouse.Driver ClickHouse

SELECT
	t.Name
FROM
	Person p
		INNER JOIN `<>f__AnonymousType224``1` t ON p.FirstName = t.Name

-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS `<>f__AnonymousType224``1`

