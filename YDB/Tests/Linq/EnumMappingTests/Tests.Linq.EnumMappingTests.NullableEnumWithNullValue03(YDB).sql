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
DECLARE $Value Text(2) -- StringFixedLength
SET     $Value = '11'u

INSERT INTO LinqDataTypes
(
	ID,
	StringValue
)
VALUES
(
	$Id,
	$Value
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 102
DECLARE $Value Text(2) -- StringFixedLength
SET     $Value = '22'u

INSERT INTO LinqDataTypes
(
	ID,
	StringValue
)
VALUES
(
	$Id,
	$Value
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 103
DECLARE $Value Text -- StringFixedLength
SET     $Value = NULL

INSERT INTO LinqDataTypes
(
	ID,
	StringValue
)
VALUES
(
	$Id,
	$Value
)

-- YDB Ydb

SELECT
	r.ID as Id,
	r.StringValue as Value_1
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

