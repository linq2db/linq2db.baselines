-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value" as "Value_1"
FROM
	"TakeSkipClass" t1
ORDER BY
	t1."Value"
OFFSET 6 ROWS

