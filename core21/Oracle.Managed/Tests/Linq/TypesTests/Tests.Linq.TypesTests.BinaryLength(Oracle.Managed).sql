BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @BinaryValue Blob -- Object
SET     @BinaryValue = HEXTORAW('0102030405')

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."BinaryValue" = :BinaryValue
WHERE
	"LinqDataTypes".ID = 1

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	Length(t."BinaryValue")
FROM
	"LinqDataTypes" t
WHERE
	t.ID = 1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @BinaryValue Blob -- Object
SET     @BinaryValue = NULL

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."BinaryValue" = :BinaryValue
WHERE
	"LinqDataTypes".ID = 1

