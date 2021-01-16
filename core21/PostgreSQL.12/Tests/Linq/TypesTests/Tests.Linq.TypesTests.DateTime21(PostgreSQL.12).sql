BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @dt Timestamp -- DateTime
SET     @dt = '2010-12-14 05:00:07.425'::timestamp

UPDATE
	"LinqDataTypes"
SET
	"DateTimeValue" = :dt
WHERE
	"LinqDataTypes"."ID" = 1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @pdt Timestamp -- DateTime
SET     @pdt = '2001-01-11 01:11:21.100'::timestamp

UPDATE
	"LinqDataTypes"
SET
	"DateTimeValue" = :pdt
WHERE
	"LinqDataTypes"."ID" = 1

