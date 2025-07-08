BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."Value",
	s_1."c1"
FROM
	"SampleClass" t
		CROSS APPLY (
			SELECT
				s."c1"
			FROM
				(
					SELECT
						1 as "c1"
					FROM SYS.DUAL
					WHERE
						1 = t."Id"
				) s
		) s_1

