-- PostgreSQL.19 PostgreSQL12
DECLARE @asOf Timestamp -- DateTime2
SET     @asOf = '2026-01-10 08:15:30'::timestamp

UPDATE
	"MeasuredPeriodRow"
SET
	"Elapsed" = Extract(epoch From (:asOf - "MeasuredPeriodRow"."ClosedOn")) / 86400
WHERE
	"MeasuredPeriodRow"."Id" = 1

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."Id",
	t1."ClosedOn",
	t1."Elapsed"
FROM
	"MeasuredPeriodRow" t1
LIMIT 2

-- PostgreSQL.19 PostgreSQL12
DECLARE @asOf Timestamp -- DateTime2
SET     @asOf = '2026-01-10 08:15:30'::timestamp

SELECT
	r."Id"
FROM
	"MeasuredPeriodRow" r
WHERE
	r."Elapsed" < Extract(epoch From (:asOf - r."ClosedOn")) / 3600

-- PostgreSQL.19 PostgreSQL12
DECLARE @asOf Timestamp -- DateTime2
SET     @asOf = '2026-01-10 08:15:30'::timestamp

UPDATE
	"MeasuredPeriodRow"
SET
	"Elapsed" = Extract(epoch From ("MeasuredPeriodRow"."ClosedOn" - :asOf)) / 3600
WHERE
	"MeasuredPeriodRow"."Id" = 1

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."Id",
	t1."ClosedOn",
	t1."Elapsed"
FROM
	"MeasuredPeriodRow" t1
LIMIT 2

-- PostgreSQL.19 PostgreSQL12
DECLARE @asOf Timestamp -- DateTime2
SET     @asOf = '2026-01-10 08:15:30'::timestamp

SELECT
	r."Id"
FROM
	"MeasuredPeriodRow" r
WHERE
	r."Elapsed" < Extract(epoch From (r."ClosedOn" - :asOf)) / 86400

