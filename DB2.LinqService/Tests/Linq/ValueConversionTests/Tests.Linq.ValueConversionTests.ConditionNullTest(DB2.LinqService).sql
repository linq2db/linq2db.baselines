﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p_1".ID,
	"p_1"."Value1"
FROM
	(
		SELECT
			CASE
				WHEN "i"."item" = 0 THEN NULL
				ELSE "p"."ParentID"
			END as ID,
			"p"."Value1"
		FROM
			"Parent" "p",
			(VALUES
				(0), (1)
			) "i"("item")
	) "p_1"
WHERE
	"p_1".ID = "p_1"."Value1" OR "p_1".ID IS NULL AND "p_1"."Value1" IS NULL

