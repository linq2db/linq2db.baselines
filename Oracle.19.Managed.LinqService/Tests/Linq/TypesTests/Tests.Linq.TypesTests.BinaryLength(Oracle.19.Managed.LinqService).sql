BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @BinaryValue Blob -- Object
SET     @BinaryValue = HEXTORAW('0102030405')

UPDATE
	"LinqDataTypes" t
SET
	"BinaryValue" = :BinaryValue
WHERE
	t.ID = 1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	Length(t."BinaryValue") as "Value_1"
FROM
	"LinqDataTypes" t
WHERE
	t.ID = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @BinaryValue Blob -- Object
SET     @BinaryValue = NULL

UPDATE
	"LinqDataTypes" t
SET
	"BinaryValue" = :BinaryValue
WHERE
	t.ID = 1

