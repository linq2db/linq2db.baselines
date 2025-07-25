﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

WITH "CTE_1" ("EnumValue")
AS
(
	SELECT
		CASE
			WHEN g_1."EnumValue" IS NOT NULL THEN g_1."EnumValue"
			ELSE 0
		END
	FROM
		"Issue4167Table" g_1
	WHERE
		g_1."Value" = '000001'
	GROUP BY
		g_1."Value",
		g_1."EnumValue"
)
SELECT
	t1."EnumValue"
FROM
	"CTE_1" t1
ORDER BY
	t1."EnumValue"

