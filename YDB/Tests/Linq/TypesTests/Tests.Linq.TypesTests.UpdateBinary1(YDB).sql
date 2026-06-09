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
	t.BinaryValue as BinaryValue
FROM
	LinqDataTypes t
WHERE
	t.ID = 1

