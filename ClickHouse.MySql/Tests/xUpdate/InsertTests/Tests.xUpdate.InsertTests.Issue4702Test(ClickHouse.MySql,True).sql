-- ClickHouse.MySql ClickHouse

SELECT Max(Id) FROM Issue4702Table

-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4702Table
(
	Id,
	Text
)
VALUES
(1,'Text 1'),
(2,'Text 2')

-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4702Table
(
	Text
)
VALUES
(
	'Text 3'
)

