-- ClickHouse.MySql ClickHouse
SELECT Max(Id) FROM KeepIdentityTable

-- ClickHouse.MySql ClickHouse
INSERT INTO KeepIdentityTable
(
	Id,
	Text
)
VALUES
(1,'Text 1'),
(2,'Text 2')

-- ClickHouse.MySql ClickHouse
INSERT INTO KeepIdentityTable
(
	Text
)
VALUES
(
	'Text 3'
)

