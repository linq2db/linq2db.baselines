BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

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

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @param_1 Boolean
SET     @param_1 = True

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
	t."BoolValue" = :param_1

