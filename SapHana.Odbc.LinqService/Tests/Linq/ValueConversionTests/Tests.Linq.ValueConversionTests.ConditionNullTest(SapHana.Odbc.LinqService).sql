﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p_1"."ID",
	"p_1"."Value1"
FROM
	(
		SELECT
			CASE
				WHEN "i"."item" = 0 THEN NULL
				ELSE "p"."ParentID"
			END as "ID",
			"p"."Value1"
		FROM
			"Parent" "p"
				CROSS JOIN (
					SELECT 0 AS "item" FROM DUMMY
					UNION ALL
					SELECT 1 FROM DUMMY) "i"
	) "p_1"
WHERE
	"p_1"."ID" = "p_1"."Value1" OR "p_1"."ID" IS NULL AND "p_1"."Value1" IS NULL

