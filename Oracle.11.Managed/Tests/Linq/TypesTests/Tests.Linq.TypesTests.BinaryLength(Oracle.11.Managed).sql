-- Oracle.11.Managed Oracle11
DECLARE @BinaryValue Blob -- Object
SET     @BinaryValue = HEXTORAW('0102030405')

UPDATE
	"LinqDataTypes" t
SET
	"BinaryValue" = :BinaryValue
WHERE
	t.ID = 1

-- Oracle.11.Managed Oracle11

SELECT
	Length(t."BinaryValue")
FROM
	"LinqDataTypes" t
WHERE
	t.ID = 1 AND ROWNUM <= 1

-- Oracle.11.Managed Oracle11
DECLARE @BinaryValue Blob -- Object
SET     @BinaryValue = NULL

UPDATE
	"LinqDataTypes" t
SET
	"BinaryValue" = :BinaryValue
WHERE
	t.ID = 1

