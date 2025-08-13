BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @BinaryValue Blob -- Object
SET     @BinaryValue = HEXTORAW('0102030405')

UPDATE
	"LinqDataTypes" t
SET
	"BinaryValue" = :BinaryValue
WHERE
	t.ID = 1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t."BinaryValue"
FROM
	"LinqDataTypes" t
WHERE
	t.ID = 1

