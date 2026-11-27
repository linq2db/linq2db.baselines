-- ClickHouse.MySql ClickHouse
INSERT INTO BinaryValuesTable
(
	Id,
	Data,
	DataB
)
VALUES
(
	99,
	'\x01\x02\x03\x04\x05',
	'\x01\x02\x03\x04\x05\x06'
)

-- ClickHouse.MySql ClickHouse
SELECT
	Length(x.Data)
FROM
	BinaryValuesTable x

-- ClickHouse.MySql ClickHouse
SELECT
	Length(x.Data)
FROM
	BinaryValuesTable x

-- ClickHouse.MySql ClickHouse
SELECT
	Length(x.DataB)
FROM
	BinaryValuesTable x

-- ClickHouse.MySql ClickHouse
SELECT
	Length(x.DataB)
FROM
	BinaryValuesTable x

