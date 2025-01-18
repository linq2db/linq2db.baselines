BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t2."Id",
	(
		SELECT
			se."Value"
		FROM
			"Issue4723Table2" se
		WHERE
			se."Id" = t2."Id"
		FETCH NEXT 1 ROWS ONLY
	),
	t1."Association"
FROM
	"Issue4723Table1" t2
		OUTER APPLY (
			SELECT
				a_Association."Value" as "Association"
			FROM
				"Issue4723Table2" a_Association
			WHERE
				a_Association."Id" = t2."Id"
			FETCH NEXT 1 ROWS ONLY
		) t1

