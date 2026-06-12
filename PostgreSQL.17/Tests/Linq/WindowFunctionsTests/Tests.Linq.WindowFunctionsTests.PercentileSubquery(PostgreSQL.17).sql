-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t."CategoryId",
	(
		SELECT
			PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY x."DecimalValue")
		FROM
			"WindowFunctionTestEntity" x
		WHERE
			x."Id" > t."Id" AND x."DecimalValue" > 1
	)
FROM
	"WindowFunctionTestEntity" t

