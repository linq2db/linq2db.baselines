-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Value Int32
SET     $Value = 42

INSERT INTO OptionNullableElemTable
(
	Id,
	`Value`
)
VALUES
(
	$Id,
	$Value
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $Value Int32
SET     $Value = NULL

INSERT INTO OptionNullableElemTable
(
	Id,
	`Value`
)
VALUES
(
	$Id,
	$Value
)

-- YDB Ydb
SELECT
	r.Id as Id,
	r.`Value` as Value_1
FROM
	OptionNullableElemTable r
WHERE
	r.Id = 1
LIMIT 2

-- YDB Ydb
SELECT
	r.Id as Id,
	r.`Value` as Value_1
FROM
	OptionNullableElemTable r
WHERE
	r.Id = 2
LIMIT 2

