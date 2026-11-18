-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
SELECT
	after_1.Id,
	arg3.Id,
	arg3.Text
FROM
	Names after_1
		LEFT JOIN Addresses arg3 ON arg3.Id = after_1.Id

