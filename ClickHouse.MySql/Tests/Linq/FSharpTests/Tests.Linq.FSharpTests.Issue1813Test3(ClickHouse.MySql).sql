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
	tupledArg.Id,
	tupledArg.Name,
	arg2.Id,
	arg2.Text
FROM
	Names tupledArg
		LEFT JOIN Addresses arg2 ON tupledArg.Id = arg2.Id
ORDER BY
	tupledArg.Id

