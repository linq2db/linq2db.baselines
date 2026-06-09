-- YDB Ydb
DECLARE $p Int32
SET     $p = 104

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < $p

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 101
DECLARE $Value Int32
SET     $Value = 11

INSERT INTO LinqDataTypes
(
	ID,
	IntValue
)
VALUES
(
	$Id,
	$Value
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 102
DECLARE $Value Int32
SET     $Value = 0

INSERT INTO LinqDataTypes
(
	ID,
	IntValue
)
VALUES
(
	$Id,
	$Value
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 103
DECLARE $Value Int32
SET     $Value = NULL

INSERT INTO LinqDataTypes
(
	ID,
	IntValue
)
VALUES
(
	$Id,
	$Value
)

-- YDB Ydb

SELECT
	r.ID as Id,
	r.IntValue as Value_1
FROM
	LinqDataTypes r
WHERE
	r.ID >= 101 AND r.ID <= 103
ORDER BY
	r.ID

-- YDB Ydb

SELECT
	r.ID as Id,
	r.IntValue as Int32,
	r.StringValue as String
FROM
	LinqDataTypes r
WHERE
	r.ID >= 101 AND r.ID <= 103
ORDER BY
	r.ID

-- YDB Ydb
DECLARE $p Int32
SET     $p = 104

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < $p

