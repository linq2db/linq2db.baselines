BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @BinaryValue Blob -- Object
SET     @BinaryValue = HEXTORAW('0102030405')

UPDATE
	LinqDataTypes
SET
	LinqDataTypes.BinaryValue = :BinaryValue
WHERE
	LinqDataTypes.ID = 1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	t.BinaryValue
FROM
	LinqDataTypes t
WHERE
	t.ID = 1

