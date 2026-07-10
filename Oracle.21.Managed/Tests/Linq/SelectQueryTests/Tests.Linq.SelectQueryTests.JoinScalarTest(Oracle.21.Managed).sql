-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t."Id",
	t."Value",
	s."c1"
FROM
	"SampleClass" t
		INNER JOIN (
			SELECT
				1 as "c1"
			FROM SYS.DUAL
		) s ON 1 = t."Id"

