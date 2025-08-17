BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	t2."Id",
	(
		SELECT
			se."Value"
		FROM
			"Issue4723Table2" se
		WHERE
			se."Id" = t2."Id"
		LIMIT 1
	),
	t1."Association"
FROM
	"Issue4723Table1" t2
		LEFT JOIN LATERAL (
			SELECT
				"a_Association"."Value" as "Association"
			FROM
				"Issue4723Table2" "a_Association"
			WHERE
				"a_Association"."Id" = t2."Id"
			LIMIT 1
		) t1 ON 1=1

