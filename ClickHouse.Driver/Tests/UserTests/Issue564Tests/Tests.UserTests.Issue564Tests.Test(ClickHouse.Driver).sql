-- ClickHouse.Driver ClickHouse

INSERT INTO Parent564
(
	Type,
	StringValue
)
VALUES
(
	'Child564A',
	'SomeValue'
)

-- ClickHouse.Driver ClickHouse

INSERT INTO Parent564
(
	Type,
	IntValue
)
VALUES
(
	'Child564B',
	911
)

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Parent564 t1

