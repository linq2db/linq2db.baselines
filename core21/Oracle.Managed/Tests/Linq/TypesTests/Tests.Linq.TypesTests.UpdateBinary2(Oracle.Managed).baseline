BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @BinaryValue Blob -- Object
SET     @BinaryValue = HEXTORAW('0102030405')
DECLARE @ID Int32
SET     @ID = 1

UPDATE
	LinqDataTypes
SET
	LinqDataTypes.BinaryValue = :BinaryValue
WHERE
	LinqDataTypes.ID = :ID

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @BinaryValue Blob -- Object
SET     @BinaryValue = HEXTORAW('0504030201')
DECLARE @ID Int32
SET     @ID = 2

UPDATE
	LinqDataTypes
SET
	LinqDataTypes.BinaryValue = :BinaryValue
WHERE
	LinqDataTypes.ID = :ID

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t.ID,
	t.MoneyValue,
	t.DateTimeValue,
	t.BoolValue,
	t.GuidValue,
	t.BinaryValue,
	t.SmallIntValue,
	t.StringValue
FROM
	LinqDataTypes t
WHERE
	t.ID IN (1, 2)

