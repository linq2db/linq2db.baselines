-- YDB Ydb
DECLARE Id Int32
SET     Id = 1
DECLARE IntValue Int32
SET     IntValue = 42
DECLARE StrValue Text(5) -- String
SET     StrValue = 'hello'u

INSERT INTO OptionRoundtripTable
(
	Id,
	IntValue,
	StrValue
)
VALUES
(
	$Id,
	$IntValue,
	$StrValue
)

-- YDB Ydb
DECLARE Id Int32
SET     Id = 2
DECLARE IntValue Int32
SET     IntValue = NULL
DECLARE StrValue Text -- String
SET     StrValue = NULL

INSERT INTO OptionRoundtripTable
(
	Id,
	IntValue,
	StrValue
)
VALUES
(
	$Id,
	$IntValue,
	$StrValue
)

-- YDB Ydb
SELECT
	r.Id as Id,
	r.IntValue as IntValue,
	r.StrValue as StrValue
FROM
	OptionRoundtripTable r
WHERE
	r.Id = 1
LIMIT 2

-- YDB Ydb
SELECT
	r.Id as Id,
	r.IntValue as IntValue,
	r.StrValue as StrValue
FROM
	OptionRoundtripTable r
WHERE
	r.Id = 2
LIMIT 2

