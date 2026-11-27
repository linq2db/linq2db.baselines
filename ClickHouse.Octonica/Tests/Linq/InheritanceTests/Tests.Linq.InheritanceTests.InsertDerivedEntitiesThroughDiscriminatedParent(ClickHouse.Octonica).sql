-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	InheritInsertParent t1

