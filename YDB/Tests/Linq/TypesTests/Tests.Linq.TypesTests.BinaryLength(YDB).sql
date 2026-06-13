-- YDB Ydb
DECLARE $BinaryValue Bytes(5) -- Binary
SET     $BinaryValue = '\x01\x02\x03\x04\x05's

UPDATE
	LinqDataTypes
SET
	BinaryValue = $BinaryValue
WHERE
	LinqDataTypes.ID = 1

-- YDB Ydb

SELECT
	Length(t.BinaryValue) as Value_1
FROM
	LinqDataTypes t
WHERE
	t.ID = 1
LIMIT 1

-- YDB Ydb
DECLARE $BinaryValue Bytes -- Binary
SET     $BinaryValue = NULL

UPDATE
	LinqDataTypes
SET
	BinaryValue = $BinaryValue
WHERE
	LinqDataTypes.ID = 1

