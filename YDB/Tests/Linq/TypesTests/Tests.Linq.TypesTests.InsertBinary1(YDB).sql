-- YDB Ydb

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID > 1000

-- YDB Ydb
DECLARE $data Bytes -- Binary
SET     $data = NULL

INSERT INTO LinqDataTypes
(
	ID,
	BinaryValue,
	BoolValue
)
VALUES
(
	1001,
	$data,
	true
)

-- YDB Ydb

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID > 1000

