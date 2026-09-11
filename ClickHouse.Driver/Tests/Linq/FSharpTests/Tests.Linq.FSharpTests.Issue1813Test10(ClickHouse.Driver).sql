-- ClickHouse.Driver ClickHouse
INSERT INTO Names
(
	Id,
	Name
)
VALUES
(
	1,
	'address'
)

-- ClickHouse.Driver ClickHouse
INSERT INTO Names
(
	Id,
	Name
)
VALUES
(
	2,
	'other'
)

-- ClickHouse.Driver ClickHouse
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

-- ClickHouse.Driver ClickHouse
SELECT
	after_1.Name,
	arg3.Id,
	arg3.Text
FROM
	Names after_1
		LEFT JOIN Addresses arg3 ON arg3.Text = after_1.Name OR arg3.Text IS NULL AND after_1.Name IS NULL

