-- ClickHouse.MySql ClickHouse
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

-- ClickHouse.MySql ClickHouse
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

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	InheritInsertParent t1

