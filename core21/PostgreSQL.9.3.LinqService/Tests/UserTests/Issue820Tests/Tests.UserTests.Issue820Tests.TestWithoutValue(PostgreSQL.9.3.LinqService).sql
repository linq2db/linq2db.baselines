﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @param Smallint -- Int16
SET     @param = 1

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
	:param = t1."SmallIntValue"

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
	t1."SmallIntValue" IS NULL

