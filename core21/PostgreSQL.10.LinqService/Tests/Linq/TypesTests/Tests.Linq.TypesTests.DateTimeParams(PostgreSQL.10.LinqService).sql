BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @dateTime Timestamp -- DateTime
SET     @dateTime = '1992-01-11 01:11:21.100'::timestamp
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	t."DateTimeValue"
FROM
	"LinqDataTypes" t
WHERE
	t."DateTimeValue" > :dateTime
LIMIT :take

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @dateTime Timestamp -- DateTime
SET     @dateTime = '1993-01-11 01:11:21.100'::timestamp
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	t."DateTimeValue"
FROM
	"LinqDataTypes" t
WHERE
	t."DateTimeValue" > :dateTime
LIMIT :take

