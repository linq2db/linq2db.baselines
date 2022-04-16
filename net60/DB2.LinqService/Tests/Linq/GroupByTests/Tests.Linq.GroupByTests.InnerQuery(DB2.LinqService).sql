﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	(
		SELECT
			"d"."Taxonomy"
		FROM
			"Doctor" "d"
		WHERE
			"t1"."PersonID" = "d"."PersonID"
		FETCH FIRST 1 ROWS ONLY
	)
FROM
	"Doctor" "t1"
GROUP BY
	"t1"."PersonID"

