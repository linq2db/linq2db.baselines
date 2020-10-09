BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @p1 Timestamp -- DateTime
SET     @p1 = '2001-01-11 01:11:21.100'::timestamp

SELECT 
	t."ID", 
	t."MoneyValue", 
	t."DateTimeValue", 
	t."DateTimeValue2", 
	t."BoolValue", 
	t."GuidValue", 
	t."SmallIntValue", 
	t."IntValue", 
	t."BigIntValue", 
	t."StringValue"
FROM
	"LinqDataTypes" t
WHERE
	t."DateTimeValue" IN (:p1)

