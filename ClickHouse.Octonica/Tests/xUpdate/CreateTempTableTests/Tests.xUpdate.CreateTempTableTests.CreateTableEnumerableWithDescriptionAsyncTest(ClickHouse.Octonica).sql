-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TempTable

-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS `<>f__AnonymousType224``1`
(
	Name Nullable(String)
)
ENGINE = Memory()

INSERT INTO `<>f__AnonymousType224``1`(Name) VALUES

-- ClickHouse.Octonica ClickHouse

SELECT
	t.Name
FROM
	Person p
		INNER JOIN `<>f__AnonymousType224``1` t ON p.FirstName = t.Name

-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS `<>f__AnonymousType224``1`

