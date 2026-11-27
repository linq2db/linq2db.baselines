-- PostgreSQL.12 PostgreSQL12
DECLARE @test Timestamp -- DateTime2
SET     @test = '2026-06-06 02:01:01'::timestamp

UPDATE
	"ShiftedDateRow"
SET
	"Date" = CASE
		WHEN "ShiftedDateRow"."Date" IS NOT NULL THEN :test
		ELSE "ShiftedDateRow"."Plain" + Interval '1 Day'
	END

-- PostgreSQL.12 PostgreSQL12
SELECT
	t1."Id",
	t1."Plain",
	t1."Date"
FROM
	"ShiftedDateRow" t1
ORDER BY
	t1."Id"

