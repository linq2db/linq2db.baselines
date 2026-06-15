-- YDB Ydb
DECLARE $Type Text(9) -- String
SET     $Type = 'Child564A'u
DECLARE $StringValue Text(9) -- String
SET     $StringValue = 'SomeValue'u

INSERT INTO Parent564
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
DECLARE $Type Text(9) -- String
SET     $Type = 'Child564B'u
DECLARE $IntValue Int32
SET     $IntValue = 911

INSERT INTO Parent564
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
	Parent564 t1

