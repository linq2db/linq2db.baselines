﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	p_1.ID,
	p_1."Value_1"
FROM
	(
		SELECT
			CASE
				WHEN i."item" = 0 THEN NULL
				ELSE p."ParentID"
			END as ID,
			p."Value1" as "Value_1"
		FROM
			"Parent" p
				CROSS JOIN (
					SELECT 0 AS "item" FROM sys.dual
					UNION ALL
					SELECT 1 FROM sys.dual) i
	) p_1
WHERE
	(p_1.ID = p_1."Value_1" OR p_1.ID IS NULL AND p_1."Value_1" IS NULL)

