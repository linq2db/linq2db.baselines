-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TempTable

-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS `<>f__AnonymousType224``1`
(
	Name Nullable(String)
)
ENGINE = Memory()

-- ClickHouse.MySql ClickHouse

INSERT INTO `<>f__AnonymousType224``1`
(
	Name
)
VALUES
('John')

-- ClickHouse.MySql ClickHouse

SELECT
	t.Name
FROM
	Person p
		INNER JOIN `<>f__AnonymousType224``1` t ON p.FirstName = t.Name

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `<>f__AnonymousType224``1`

