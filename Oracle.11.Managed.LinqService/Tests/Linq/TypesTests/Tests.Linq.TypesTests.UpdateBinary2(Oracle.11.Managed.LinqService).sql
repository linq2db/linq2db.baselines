BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @BinaryValue Blob -- Object
SET     @BinaryValue = HEXTORAW('0102030405')
DECLARE @p Int32
SET     @p = 1

UPDATE
	"LinqDataTypes" t
SET
	"BinaryValue" = :BinaryValue
WHERE
	t.ID = :p

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @BinaryValue Blob -- Object
SET     @BinaryValue = HEXTORAW('0504030201')
DECLARE @p Int32
SET     @p = 2

UPDATE
	"LinqDataTypes" t
SET
	"BinaryValue" = :BinaryValue
WHERE
	t.ID = :p

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t.ID,
	t."MoneyValue",
	t."DateTimeValue",
	t."BoolValue",
	t."GuidValue",
	t."BinaryValue",
	t."SmallIntValue",
	t."StringValue"
FROM
	"LinqDataTypes" t
WHERE
	t.ID IN (1, 2)

