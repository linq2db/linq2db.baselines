-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @test TimeStamp -- DateTime
SET     @test = TIMESTAMP '2026-06-06 02:01:01.000000'

UPDATE
	"ShiftedDateRow" t1
SET
	"Date" = CASE
		WHEN t1."Date" IS NOT NULL THEN :test
		ELSE t1."Plain" + INTERVAL '1' DAY
	END

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Plain",
	t1."Date"
FROM
	"ShiftedDateRow" t1
ORDER BY
	t1."Id"

