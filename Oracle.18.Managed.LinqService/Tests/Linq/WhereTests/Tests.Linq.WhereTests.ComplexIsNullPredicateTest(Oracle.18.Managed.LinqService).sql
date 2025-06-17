BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Value"
FROM
	"ComplexPredicate" r
WHERE
	CASE
		WHEN r."Value" = '123' THEN 1
		ELSE 0
	END = CASE
		WHEN r."Value" = '1' OR r."Value" = 'test' THEN 1
		ELSE 0
	END
ORDER BY
	r."Id"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value"
FROM
	"ComplexPredicate" t1

