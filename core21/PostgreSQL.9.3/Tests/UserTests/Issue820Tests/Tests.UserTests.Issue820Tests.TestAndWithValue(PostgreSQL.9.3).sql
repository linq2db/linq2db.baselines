BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @Value_1 Smallint -- Int16
SET     @Value_1 = 1

SELECT 
	t1."ID", 
	t1."MoneyValue", 
	t1."DateTimeValue", 
	t1."DateTimeValue2", 
	t1."BoolValue", 
	t1."GuidValue", 
	t1."SmallIntValue", 
	t1."IntValue", 
	t1."BigIntValue", 
	t1."StringValue"
FROM
	"LinqDataTypes" t1
WHERE
	:Value_1 = t1."SmallIntValue"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	t1."ID", 
	t1."MoneyValue", 
	t1."DateTimeValue", 
	t1."DateTimeValue2", 
	t1."BoolValue", 
	t1."GuidValue", 
	t1."SmallIntValue", 
	t1."IntValue", 
	t1."BigIntValue", 
	t1."StringValue"
FROM
	"LinqDataTypes" t1
WHERE
	1 = 0

