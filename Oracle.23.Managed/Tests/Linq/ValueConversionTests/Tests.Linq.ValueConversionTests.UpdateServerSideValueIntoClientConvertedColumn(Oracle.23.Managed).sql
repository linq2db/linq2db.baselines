-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @test TimeStamp -- DateTime
SET     @test = TIMESTAMP '2026-06-06 02:01:01.000000'

UPDATE
	"Issue5975Row" t1
SET
	"Date" = CASE
		WHEN t1."Date" IS NOT NULL THEN :test
		ELSE LOCALTIMESTAMP
	END

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Plain",
	t1."Date"
FROM
	"Issue5975Row" t1
ORDER BY
	t1."Id"

