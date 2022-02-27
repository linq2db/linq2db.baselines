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
DECLARE @take Int32
SET     @take = 1

SELECT
	Length(t.BinaryValue)
FROM
	LinqDataTypes t
WHERE
	t.ID = 1 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @BinaryValue Blob -- Object
SET     @BinaryValue = NULL

UPDATE
	LinqDataTypes
SET
	LinqDataTypes.BinaryValue = :BinaryValue
WHERE
	LinqDataTypes.ID = 1

