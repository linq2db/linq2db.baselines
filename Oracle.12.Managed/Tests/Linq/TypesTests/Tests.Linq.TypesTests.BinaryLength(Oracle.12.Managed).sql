BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @BinaryValue Blob -- Object
SET     @BinaryValue = HEXTORAW('0102030405')

UPDATE
	"LinqDataTypes" t
SET
	"BinaryValue" = :BinaryValue
WHERE
	t.ID = 1

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	Length(t."BinaryValue") as "Value_1"
FROM
	"LinqDataTypes" t
WHERE
	t.ID = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @BinaryValue Blob -- Object
SET     @BinaryValue = NULL

UPDATE
	"LinqDataTypes" t
SET
	"BinaryValue" = :BinaryValue
WHERE
	t.ID = 1

