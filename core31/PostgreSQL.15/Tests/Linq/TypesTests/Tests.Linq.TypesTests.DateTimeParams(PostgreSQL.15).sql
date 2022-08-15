BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @dateTime Timestamp -- DateTime2
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
-- PostgreSQL.15 PostgreSQL
DECLARE @dateTime Timestamp -- DateTime2
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

