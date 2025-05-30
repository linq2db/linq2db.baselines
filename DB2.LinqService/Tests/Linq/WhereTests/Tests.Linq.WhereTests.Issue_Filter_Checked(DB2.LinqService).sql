﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t4"."Count_1",
	"t3"."Count_1"
FROM
	(
		SELECT
			COUNT(*) as "Count_1"
		FROM
			(
				SELECT
					*
				FROM
					"Person" "t1"
				FETCH NEXT 1 ROWS ONLY
			) "a1"
	) "t4"
		FULL JOIN (
			SELECT
				COUNT(*) as "Count_1"
			FROM
				(
					SELECT
						CAST(NULL AS Int) as "Key_1"
					FROM
						"Person" "t2"
					WHERE
						1 = 0
				) "a2"
			GROUP BY
				"a2"."Key_1"
		) "t3" ON "t4"."Count_1" = "t3"."Count_1"
WHERE
	"t4"."Count_1" IS NULL OR "t3"."Count_1" IS NULL

