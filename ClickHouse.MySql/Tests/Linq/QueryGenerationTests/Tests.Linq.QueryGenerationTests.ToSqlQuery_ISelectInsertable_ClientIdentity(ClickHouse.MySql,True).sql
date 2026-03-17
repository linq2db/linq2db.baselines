-- ClickHouse.MySql ClickHouse

INSERT INTO TableWithIdentitySrc
(
	Value
)
VALUES
(
	1
)

-- ClickHouse.MySql ClickHouse

INSERT INTO TableWithIdentity
(
	Id,
	Value
)
SELECT
	345,
	t1.Value + 123
FROM
	TableWithIdentitySrc t1

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	TableWithIdentity t1

