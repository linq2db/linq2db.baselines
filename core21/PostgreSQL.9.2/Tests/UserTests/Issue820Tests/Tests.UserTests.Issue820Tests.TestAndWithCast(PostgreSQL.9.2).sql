BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @param_1 Smallint -- Int16
SET     @param_1 = 1

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
	:param_1 = t1."SmallIntValue"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

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

