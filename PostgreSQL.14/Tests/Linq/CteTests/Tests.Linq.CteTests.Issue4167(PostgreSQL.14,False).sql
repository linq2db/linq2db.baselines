-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."EnumValue"
FROM
	(
		SELECT
			CASE
				WHEN r."EnumValue" IS NOT NULL THEN r."EnumValue"
				ELSE 0
			END as "EnumValue"
		FROM
			(
				SELECT DISTINCT
					g_1."Value" as "Value_1",
					g_1."EnumValue"
				FROM
					"Issue4167Table" g_1
				WHERE
					g_1."Value" = '000001'
			) r
	) t1
ORDER BY
	t1."EnumValue"

