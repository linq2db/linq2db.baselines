BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."CategoryId",
	t1.c1
FROM
	"WindowFunctionTestEntity" t
		LEFT JOIN LATERAL (
			SELECT
				PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY x."DecimalValue") as c1
			FROM
				"WindowFunctionTestEntity" x
			WHERE
				x."Id" > t."Id" AND x."DecimalValue" > 1
		) t1 ON 1=1

