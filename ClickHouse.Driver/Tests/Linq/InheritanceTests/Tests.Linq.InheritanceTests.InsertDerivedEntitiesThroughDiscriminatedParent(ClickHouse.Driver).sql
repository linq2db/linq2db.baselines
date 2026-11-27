-- ClickHouse.Driver ClickHouse
INSERT INTO InheritInsertParent
(
	Type,
	StringValue
)
VALUES
(
	'InheritanceInsertChildA',
	'SomeValue'
)

-- ClickHouse.Driver ClickHouse
INSERT INTO InheritInsertParent
(
	Type,
	IntValue
)
VALUES
(
	'InheritanceInsertChildB',
	911
)

-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	InheritInsertParent t1

