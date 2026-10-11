-- PostgreSQL.12 PostgreSQL12
DECLARE @test Timestamp -- DateTime2
SET     @test = '2026-06-06 02:01:01'::timestamp

UPDATE
	"Issue5975Row"
SET
	"Date" = CASE
		WHEN "Issue5975Row"."Date" IS NOT NULL THEN :test
		ELSE "Issue5975Row"."Plain" + Interval '1 Day'
	END

-- PostgreSQL.12 PostgreSQL12
SELECT
	t1."Id",
	t1."Plain",
	t1."Date"
FROM
	"Issue5975Row" t1
ORDER BY
	t1."Id"

