-- ClickHouse.MySql ClickHouse

INSERT INTO Names
(
	Id,
	Name
)
VALUES
(
	1,
	'name1'
)

-- ClickHouse.MySql ClickHouse

INSERT INTO Names
(
	Id,
	Name
)
VALUES
(
	2,
	'name2'
)

-- ClickHouse.MySql ClickHouse

INSERT INTO Addresses
(
	Id,
	Text
)
VALUES
(
	1,
	'address'
)

-- ClickHouse.MySql ClickHouse

SELECT
	after_1.Id,
	after_1.Name,
	arg2.Id,
	arg2.Text
FROM
	Names after_1
		LEFT JOIN Addresses arg2 ON after_1.Id = arg2.Id
ORDER BY
	after_1.Id

