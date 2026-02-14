-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	(
		SELECT
			se."Value" as "ExpressionMethod"
		FROM
			"Issue4723Table2" se
		WHERE
			se."Id" = t1."Id"
		FETCH NEXT 1 ROWS ONLY
	),
	(
		SELECT
			a_Association."Value" as "Association"
		FROM
			"Issue4723Table2" a_Association
		WHERE
			a_Association."Id" = t1."Id"
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Issue4723Table1" t1

