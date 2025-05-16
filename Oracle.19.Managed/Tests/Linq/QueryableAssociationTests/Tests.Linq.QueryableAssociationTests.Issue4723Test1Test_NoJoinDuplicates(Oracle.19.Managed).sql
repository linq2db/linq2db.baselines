BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	t1."Association"
FROM
	"Issue4723Table1" x
		OUTER APPLY (
			SELECT
				a_Association."Value" as "Association"
			FROM
				"Issue4723Table2" a_Association
			WHERE
				a_Association."Id" = x."Id"
			FETCH NEXT 1 ROWS ONLY
		) t1
WHERE
	t1."Association" IS NOT NULL AND t1."Association" <> 'unknown'

