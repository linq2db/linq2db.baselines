BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

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
	t."MoneyValue" * Cast(t.ID as Decimal(29, 10)) = 1.11 AND
	ROWNUM <= :take

