BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT 
	t."ID", 
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
	t."MoneyValue" * Cast(t."ID" as Decimal(29,10)) = 1.11
LIMIT :take

