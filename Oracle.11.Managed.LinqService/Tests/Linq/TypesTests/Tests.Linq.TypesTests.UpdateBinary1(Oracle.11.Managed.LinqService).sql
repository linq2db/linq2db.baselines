BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @BinaryValue Blob -- Object
SET     @BinaryValue = HEXTORAW('0102030405')

UPDATE
	"LinqDataTypes" t
SET
	"BinaryValue" = :BinaryValue
WHERE
	t.ID = 1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t."BinaryValue"
FROM
	"LinqDataTypes" t
WHERE
	t.ID = 1

