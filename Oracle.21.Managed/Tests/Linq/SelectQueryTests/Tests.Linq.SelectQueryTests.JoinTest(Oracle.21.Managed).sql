-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."Value",
	s."Key_1",
	s."SecondValue"
FROM
	"SampleClass" t
		INNER JOIN (
			SELECT
				1 as "Key_1",
				3 as "SecondValue"
			FROM SYS.DUAL
		) s ON 1 = t."Id"

