-- YDB Ydb
DECLARE Type Text(23) -- String
SET     Type = 'InheritanceInsertChildA'u
DECLARE StringValue Text(9) -- String
SET     StringValue = 'SomeValue'u

INSERT INTO InheritInsertParent
(
	`Type`,
	StringValue
)
VALUES
(
	$Type,
	$StringValue
)

-- YDB Ydb
DECLARE Type Text(23) -- String
SET     Type = 'InheritanceInsertChildB'u
DECLARE IntValue Int32
SET     IntValue = 911

INSERT INTO InheritInsertParent
(
	`Type`,
	IntValue
)
VALUES
(
	$Type,
	$IntValue
)

-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	InheritInsertParent t1

