-- YDB Ydb
DECLARE $p Int32
SET     $p = 102

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < $p

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 101
DECLARE $TestField Int64
SET     $TestField = 12l
DECLARE $Int32Field Int32
SET     $Int32Field = 0

INSERT INTO LinqDataTypes
(
	ID,
	BigIntValue,
	IntValue
)
VALUES
(
	$Id,
	$TestField,
	$Int32Field
)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	LinqDataTypes r
WHERE
	r.ID = 101 AND r.BigIntValue = 12l

-- YDB Ydb
DECLARE $p Int32
SET     $p = 102

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < $p

